<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create("id_ID");

        for ($i = 0; $i < 10; $i++) {
            User::create([
                'name' => $faker->name(),
                'email' => $faker->unique()->email(),
                'specialist' => $faker->jobTitle(),
                'password' => bcrypt('password'),
            ]);
        }
    }
}
