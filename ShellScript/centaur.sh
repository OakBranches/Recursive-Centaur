#!/bin/sh

 set -e

# $1 level
centaur () {
    if [ -z "$2" ]; then
        MAX_LEVEL=$1
    fi
    LEVEL=$1
    if [ "$LEVEL" -lt 0 ]; then
        return 0;
    fi

    centaur $(expr $LEVEL - 1) 'a'
    # ShellScript where everything is global :(
    LEVEL=$(expr $LEVEL + 1 || true) 

    if [ "$LEVEL" -eq 0 ]; then
        printf " o             %d\n/|\\_____\n|       #" $MAX_LEVEL
    else
        for i in $(seq 2 $LEVEL); do
            printf "     "
        done

        printf "! !  "

        printf "|       #"
    fi

    if [ -z "$2" ]; then
        printf "\n"
        for i in $(seq $LEVEL); do
            printf "     "
        done
        printf "! !   ! !\n"
    else
        printf "____\n"
    fi
}

echo "Write the number of centaurs":
read N

# validate that the number is a number
expr $N + 1  > /dev/null

# validate that the number is not empty
[ ! -z "$N" ]

centaur $N
