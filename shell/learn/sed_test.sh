#!/bin/bash

sed "s/my/Hao Chen's/g" pets.txt

sed -i "s/my/Hao Chen's/g" pets.txt

sed 's/^/#/g' pets.txt
sed 's/$/---/g' pets.txt

sed '1,3s/my/your/g; 3,$s/This/That/g' my.txt
# =
sed -e '1,3s/my/your/g' -e '3,$s/This/That/g' my.txt

sed 'N;s/my/your/' pets.txt

