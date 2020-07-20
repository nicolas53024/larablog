<?php

namespace App\Listeners;

use Carbon\Carbon;
use App\Events\UserCreated;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendEmailWelcomeUSer
{
    private $event;
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  UserCreated  $event
     * @return void
     */
    public function handle(UserCreated $event)
    {
        $this->event=$event;//hay que instanciar el atributo porque desde funcion anonima mail no se puede acceder a $event
        $data = [
            "title"=>"Bienvenido ".$event->user->name,
            "date" =>Carbon::now()->formatLocalized('%A %d-%B de %Y '),
            "hour"=> Carbon::now() ->format('g:i A')

        ];
                Mail::send('emails.test',$data, function($message){
                    $message->to($this->event->user->email,$this->event->user->name)
                    ->subject("Gracias por ser parte de nuestra familia");
                });
    }
}
