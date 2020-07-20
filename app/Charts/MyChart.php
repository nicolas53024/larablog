<?php

namespace App\Charts;

use ConsoleTVs\Charts\Classes\Chartjs\Chart;

class MyChart extends Chart
{
    /**
     * Initializes the chart.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    public function my_chart(){ 
        $seno=array();
        $pos=array();
        $chart = new Chart;
        $pi=pi()/4;
        for ($i=0; $i <17 ; $i++) { 
            
            array_push($pos,$i);
            array_push($seno,sin($i));
        }
        $chart->labels($pos);
        $chart->dataset('My dataset 1', 'line', $seno)->color("rgb(255, 99, 132)");

        return $chart;
    }
    public function chart2()
    {
        $borderColors = [
            "rgba(255, 99, 132, 1.0)",
            "rgba(22,160,133, 1.0)",
            "rgba(255, 205, 86, 1.0)",
            "rgba(51,105,232, 1.0)",
            "rgba(244,67,54, 1.0)",
            "rgba(34,198,246, 1.0)",
            "rgba(153, 102, 255, 1.0)",
            "rgba(255, 159, 64, 1.0)",
            "rgba(233,30,99, 1.0)",
            "rgba(205,220,57, 1.0)"
        ];
        $fillColors = [
            "rgba(23, 3, 132, 0.2)",
            "rgba(22,160,133, 0.2)",
            "rgba(255, 205, 86, 0.2)",
            "rgba(51,105,232, 0.2)",
            "rgba(244,67,54, 0.2)",
            "rgba(34,198,246, 0.2)",
            "rgba(153, 102, 255, 0.2)",
            "rgba(255, 159, 64, 0.2)",
            "rgba(233,30,99, 0.2)",
            "rgba(205,220,57, 0.2)"

        ];
        $usersChart = new Chart;
        $usersChart->minimalist(false);
        $usersChart->labels(['enero', 'Febrero', 'Marzo','Abril']);
        $usersChart->dataset('Users by trimester', 'doughnut', [62, 20, 20,34])
            ->color($borderColors)
            ->backgroundcolor($fillColors);
        return $usersChart;
    }
}
