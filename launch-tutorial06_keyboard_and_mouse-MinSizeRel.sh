#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/tutorial06_keyboard_and_mouse/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial06_keyboard_and_mouse 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial06_keyboard_and_mouse"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial06_keyboard_and_mouse"  
fi
