<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;

class FoodTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
        public function test_example()
    {
        $this->assertTrue(true);
        echo "Test Passed: The example test executed successfully.\n";
    }

    public function it_has_orders_relationship()
    {
        $food = new Food();

        $this->assertInstanceOf(\Illuminate\Database\Eloquent\Relations\BelongsToMany::class, $food->orders());

        
        echo "Test Passed: The orders relationship is defined correctly.\n";
    }

}
