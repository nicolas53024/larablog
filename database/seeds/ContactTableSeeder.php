<?php

use App\Contact;
use Illuminate\Database\Seeder;

class ContactTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Contact::Truncate();

        for ($i=1; $i <=25 ; $i++) { 
            Contact::Create([
                'name'=>"Nombre N° $i",
                'surname'=>"Apellido N° $i",
                'email'=>"correo$i@gmail.com ",
                'message'=>"Mensaje de contenido N° $i",
                

            ]);
    }
}
}
