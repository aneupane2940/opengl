#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/misc05_picking_slow_easy 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/misc05_picking_slow_easy"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/misc05_picking_slow_easy"  
fi
