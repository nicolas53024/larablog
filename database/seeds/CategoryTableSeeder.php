<?php

use App\Category;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::Truncate();

        for ($i=1; $i <=25 ; $i++) { 
            Category::Create([
                'title'=>"Categoria N° $i",
                'url_clean'=>"categoria url  $i",

            ]);

        }

    }
}
