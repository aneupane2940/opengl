#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/tutorial07_model_loading/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/tutorial07_model_loading 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/tutorial07_model_loading"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Debug/tutorial07_model_loading"  
fi
