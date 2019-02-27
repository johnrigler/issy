# issy-27389.1
Requires johnrigler/unspendable

Add this to your bash profile with the appropriate directory:


issy () 
{ 
    alias unspendable="~/unspendable/unspendable.py";
    . ~/issy/issy.lib
}

Now you can either use issy as a library or via the extended functions that it provides.  Furthermore, you can either use git to update to the latest version of issy, or hardcode to older versions vy filename extension.  The above is stored as file named in the style of: "$FUNCTION_NAME"-"SUM.SUMSIZE".

This is a fundamental aspect of how Issy can now integrate into Cryptocurrency.

The number is generated with the following command:

declare -f issy | sum

