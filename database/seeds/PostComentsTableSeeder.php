<?php

use App\PostComent;
use Illuminate\Database\Seeder;

class PostComentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PostComent::truncate();

        for ($i=0; $i <30 ; $i++) { 
            PostComent::create([
                'title'=>"Título n° $i",
                'message'=>"Mensaje de prueba $i",
                'post_id'=>"$i",
                'user_id'=>1

            ]);
        }
    }
}
