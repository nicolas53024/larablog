<?php

use App\Tag;
use Illuminate\Database\Seeder;

class TagTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Tag::Truncate();

        for ($i=1; $i <=25 ; $i++) { 
            Tag::Create([
                'title'=>"Tag N° $i"

            ]);

        }
    }
}
