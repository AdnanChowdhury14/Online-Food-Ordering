<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    // public function test_example()
    // {
    //     $response = $this->get('/');

    //     $response->assertStatus(200);
    // }
    public function it_has_fillable_attributes()
    {
        $food = new Food();

        // Assert the fillable attributes
        $this->assertEquals([
            'name',
            'price',
            'description',
            'type',
            'picture',
        ], $food->getFillable());
    }
    

   
}



