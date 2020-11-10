else

echo "Witaj $USER"
echo "Program kalkulator"
sleep 2

zapytanie="t"

while [ "$zapytanie" = "t" ] || ["$zapytanie" = "tak" ]
do

clear

echo -e  "\nPodaj a="
read aa

echo "Podaj znak:"
read znak

echo "Podaj b="
read bb

case "$znak" in
    "+") echo "wynik z + wynosi=".
    echo "scale=2; $aa+$bb" | bc -l;;
    "*") echo "wynik z * wynosi="
    echo "scale=2;     $aa*$bb" | bc -l;;
    "-") echo "wynik z - wynosi=".
    echo "scale=2; $aa-$bb" | bc -l;;
    "/") echo "wynik z / wynosi="
    echo "scale=2; $aa/$bb" | bc -l;;
    *) echo "Zly znak"

esac

echo "Czy chcesz dalej t/n (tak/nie):"
read zapytanie

done

fi
