<?php

namespace App\Http\Controllers;

use App\User;
use App\Charts\MyChart;
use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Stichoza\GoogleTranslate\GoogleTranslate;

class PaquetesController extends Controller
{
    public function charts()
    {
        $chart = new MyChart();


        // return view("paquetes.chart",["chart"=>$chart->my_chart()]);
        return view("paquetes.users", ["usersChart" => $chart->chart2()]);
        // return view('paquetes.users', [ 'usersChart' => $usersChart ] );
    }

    public function qr_generate()
    {
        // return QrCode::size(500)->generate('https://macmetrologia.com.co/');
        return QrCode::size(500)->email('nicolas53024@gmail.com', 'This is the subject.', 'This is the message body.');
    }

    public function translate()
    {
        $tr = new GoogleTranslate('es'); // Translates to 'en' from auto-detected language by default, here put your language
        $tr->setSource('en'); // Translate from English
        // $tr->setSource(); // Detect language automatically
        // $tr->setTarget('ka'); // Translate to Georgian
        echo $tr->translate('hello world');
    }

    public function stripe_create_customer()
    {
        $user = User::find(3);
        $stripeCustomer = $user->createAsStripeCustomer();
    }
    public function stripe_payment_method_register()
    {
        $user = User::find(3);
        return view('paquetes.stripe_payment_method_register', ['intent' => $user->createSetupIntent()]);
    }
    public function stripe_payment_method_create()
    {
        $user = User::find(3);
        $user->addPaymentMethod('pm_1GoZ64BWwU76iX27oHpLI9Dp');
    }
}
