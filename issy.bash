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
issy.test () 
{ 
    ~/unspendable/unspendable.py D DDDDDDDDDDDDDDDD 30
}

alias .test=issy.test
issy.check () 
{ 
   :   curl https://dogechain.info/address/DDDDDDDDDDDDDDDDDXXXXXXXXXXXYLzC7d 2> /dev/null | grep --color=auto 'text:'
   curl https://dogechain.info/address/$1 2> /dev/null > $_ISSY_DIR/$1.$$ | grep --color=auto 'text:'
   echo $1
   cat $_ISSY_DIR/$1.$$  | grep -A 1 Received | xargs -n4 | sed 's/</ /g' | sed 's/>/ /g' | awk '{print $7}' 
   cat $_ISSY_DIR/$1.$$  | grep -A 1 Sent | xargs -n4


}
issy.date () 
{ 
    date '+%Y%W%w'
}
