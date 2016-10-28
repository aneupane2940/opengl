#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/playground/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/playground 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/playground"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/playground"  
fi
