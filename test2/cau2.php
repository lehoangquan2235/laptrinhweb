<?php
$arr = [15, 25, 5, 7, 9, 4, 8, 10, 15];
$evenNumbers = [];
foreach ($arr as $number) {
    if ($number % 2 === 0) {
        $evenNumbers[] = $number;
    }
}
rsort($evenNumbers);
$indexEven = 0;
foreach ($arr as &$value) {
    if ($value % 2 === 0) {
        $value = $evenNumbers[$indexEven];
        $indexEven++;
    }
}
echo implode(' ', $arr);