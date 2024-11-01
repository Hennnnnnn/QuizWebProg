<?php

namespace Database\Seeders;

use App\Models\mscategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MsCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            ['name' => 'Interactive Multimedia'],
            ['name' => 'Software Engineering']
        ];

        foreach ($categories as $c) {
            mscategory::create($c);
        }
    }
}
