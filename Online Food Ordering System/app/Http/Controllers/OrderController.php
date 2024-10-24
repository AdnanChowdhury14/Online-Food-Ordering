<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class OrderController extends Controller
{
    public function create(Order $order)
    {
        $order->save();
    }

    public function addToOrder(Order $order)
    {
    }

    public function show()
    {
        $user_id = Auth::id();
        $orders = Order::where('user_id', $user_id)->orderBy('date', 'desc')->get();
        
        // To get total amount for each order:
        foreach($orders as $order) {
            $total = 0.0;

            foreach($order->food as $food) {
                $total += $food->price * $food->pivot->quantity;
            }
            
            $order->total = $total;
        }

        return view('order', ['orders' => $orders]);
    }

    public function destroy($id)
    {
        $order = Order::findOrFail($id);
        
        foreach ($order->food as $food){
            $order->food()->detach($food->id);
        }
        $order->delete();
        Session::flash('success', 'Successfully deleted order from order history.');
        return redirect('/order');
    }

    public function updateCart(Request $req)
    {
        if(Auth::check()){
            if(Session::get('cart') == null) {
                Session::put('cart', array());
            }
            
    
           
            $foodExists = false;    
            
            if (is_array(Session::get('cart'))) {
                $cart_arr = Session::get('cart');
                $cart_id = -1;
                foreach ($cart_arr as $subarray) {
                    $cart_id++;
                    
                    if (isset($subarray['id']) && $subarray['id'] == $req->id) {
                       
                        $foodExists = true;
                        // Increment the food in the cart session array by the specified quantity.
                        Session::increment('cart.'.$cart_id.'.quantity', $req->quantity);
                        Session::save();
                        break;  
                    }
                }
    
                if(!$foodExists) {
                    $food = [
                        'id' => $req->id,
                        'name' => $req->name,
                        'price' => $req->price,
                        'picture' => $req->picture,
                        'quantity' => $req->quantity,
                    ];
                    Session::push('cart', $food);
                }

                Session::flash('success', 'Successfully added to cart.');
            }

            return '/home';
        }
        else {
            Session::flash('info', 'You must be logged in to add to cart and place orders.');
            return '/login';
        }
    }

    public function removeFromCart($id)
    {
        
        function getNewCart($array, $key, $value, $cart_id)
        {
            $cart_arr = array();
            $results = array();
            
            // check if it is an array
            if (is_array($array)) {
                
                foreach ($array as $subarray) {
                    $cart_id++;
                    
                    if (isset($subarray[$key]) && $subarray[$key] == $value) {
                        
                        $subarray['cart_id'] = $cart_id;
                        $results[] = $subarray; 
                        break;  
                    }
                }
            }

            $cart_arr = $array;
            array_splice($cart_arr, $cart_id, 1);   
            return $cart_arr;
        }

        $new_cart_arr = getNewCart(Session::pull('cart'), 'id', $id, -1);
        Session::save();

        // Replace the existing array in the cart session with $new_cart_arr
        Session::put('cart', $new_cart_arr);
        
        Session::flash('success', 'Successfully removed from cart.');
        return redirect('/cart');
    }

    public function placeOrder(Request $req) {
        $order = Order::create([
            'user_id' => Auth::id(),
            'date' => Carbon::now(),
            'type' => $req->type,
            'deliveryAddress' => $req->address,
        ]);
        
        $cart_arr = Session::pull('cart');  // pull: get the value and removes it from the session
        foreach ($cart_arr as $key => $value) {
            // $key = 0,1,2,...,n   $value = 'id','name','price',...
            $food = Food::findOrFail($value['id']);
            $order->food()->attach($food, ['quantity' => $value['quantity']]);  // attach each food in the cart to the newly created order
        }
        
        Session::flash('success', 'Successfully placed order.');
        return redirect('/order');
    }
}
