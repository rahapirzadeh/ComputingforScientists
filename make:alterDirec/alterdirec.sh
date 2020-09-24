#!/bin/bash
cd directory;
for x in *;
do
    y=$(echo $x|awk '{print substr($0,length($0),1)}')
    cd $x

    if [ $y -eq 1 ]; then
        sed -i '.bak' '4s/.*/eat\ beats/' text.txt

    elif [ $y -eq 4 ]; then
        sed -i '.bak' '4s/.*/squash\ are\ great/' text.txt

    elif [ $y -eq 5 ]; then
        sed -i '.bak' '4s/.*/dogs\ are\ better\ than\ cats/' text.txt

    elif [ $y -eq 7 ]; then
        sed -i '.bak' '4s/.*/hello\ world/' text.txt

    elif [ $y -eq 0 ]; then
        sed -i '.bak' '4s/.*/i\ like\ grapes/' text.txt

    else
        sed -i '.bak' '4s/.*/\ /' text.txt

    fi
    cd ..
 
done
cd ..


