<?php

namespace App\Helpers;

class CustomUrl
{

    static function convertAccentedCharacters($str) //fun para quitar acentos 
    {
        return strtr(
            utf8_decode($str),
            utf8_decode('àáâãäçèéêëìíîïñòóôõöùúûüýÿÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝ'),
            'aaaaaceeeeiiiinooooouuuuyyAAAAACEEEEIIIINOOOOOUUUUY'
        );
    }
    static function urlTitle($str, $separator = '-', $lowercase = false) //fun para separar spc por -, mayus a minus,remover caracteres esp, estos dos son 
    //metodos de CodeIgniter que no trae laravel
    {
        if ($separator === 'dash') {
            $separator = '-';
        } elseif ($separator === 'underscore') {
            $separator = '_';
        }

        $q_separator = preg_quote($separator, '#');

        $trans = array(
            '&.+?;' => '',
            '[^\w\d _-]' => '',
            '\s+' => $separator,
            '(' . $q_separator . ')+' => $separator,
        );

        $str = strip_tags($str);
        foreach ($trans as $key => $val) {
            $str = preg_replace('#' . $key . '#iu', $val, $str);
        }

        if ($lowercase === true) {
            $str = strtolower($str);
        }

        return trim(trim($str, $separator));
    }
}
