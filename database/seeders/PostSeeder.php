<?php

namespace Database\Seeders;

use App\Models\mscategory;
use App\Models\User;
use App\Models\Post;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create("id_ID");

        $user = User::all();
        $category = mscategory::all();

        $title_category = [
            1 => [
                'Human and Computer Interaction',
                'User Experience',
                'User Experience for Digital Immersive Technology'
            ],
            2 => [
                'Pattern Software Design',
                'Agile Software Development',
                'Code Reengineering'
            ]
        ];

        for ($i = 0; $i < 10; $i++) {
            $selected_category = $category->random();

            $title = $faker->sentence();
            if (isset($title_category[$selected_category->id])) {
                $title = $faker->randomElement($title_category[$selected_category->id]);
            }

            Post::create([
                'user_id' => $user->random()->id,
                'category_id' => $category->random()->id,
                'title' => $title,
                'likes' => rand(1, 1000),
                'slug' => $faker->slug(),
                'description' => implode("\n\n", $faker->paragraphs(3)),
                'image' => $faker->imageUrl(640, 480, 'interactive multimedia'),
            ]);
        }
    }
}
