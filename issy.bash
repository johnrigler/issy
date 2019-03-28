-(){ echo $*; }

alias unspendable="~/unspendable/unspendable.py";

. ~/alp/alp.bash

echo hello from issy

issy.unspendable() {
for X in {1..30}; do echo $X; unspendable D TT $X; done | xargs -n2 | grep TT

}
