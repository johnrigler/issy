#!/bin/bash

export _ISSY_DIR="/home/john/issy"
export _ISSY_FILENAME="$_ISSY_DIR/issy.bash"
issy.hello () 
{ 
    echo "Welcome to Issy..."
}
issy.home () 
{ 
    cd ~/issy
}
issy.edit () 
{   
    vi $_ISSY_FILENAME;
    . $_ISSY_FILENAME; 
}
unspendable.home () 
{ 
    cd ~/unspendable
}
issy.doge () 
{ 
    ~/unspendable/unspendable.py $1 D 30 
}

issy.trans ()
{
	_STR=$(echo $1 | sed 's/\//5/g' | sed 's/\:/4/g' | sed 's/\./3/g' | sed 's/\,\ /2/g' | sed 's/\ /1/g')
	echo $_STR | tr 'a-z' 'A-Z' | sed 's/I/i/g' | sed 's/O/o/g' 
}

alias .doge=issy.doge
issy.check () 
{ 
   curl https://dogechain.info/address/$1 2> /dev/null > $_ISSY_DIR/$1.$$ | grep 'text:'
   (
   echo $1
   cat $_ISSY_DIR/$1.$$  | grep -A 1 Received | xargs -n4 | sed 's/</ /g' | sed 's/>/ /g' | awk '{print $7}' 
   cat $_ISSY_DIR/$1.$$  | grep -A 1 Sent | xargs -n4 | sed 's/</ /g' | sed 's/>/ /g' | awk '{print $7}'
   ) | xargs -n3

}
issy.date () 
{  
    date '+%Y%W%w'
}
issy.reflection () 
{ 
    declare -F | grep issy | while read CMD; do
        $CMD | egrep '^issy|^    : :';
    done
}
issy.fetch () 
{
	issy.check $(issy.doge $(issy.trans "$1"));
}
issy.unpack () 
{ 
    while read WORD RECV SEND; do
        echo $WORD | cut -c 2-28 | sed 's/X//g' | sed 's/1/ /g' | sed 's/2/, /g' | tr 'A-Z' 'a-z';
    done
}
