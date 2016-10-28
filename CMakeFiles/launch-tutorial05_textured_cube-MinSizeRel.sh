#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/tutorial05_textured_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial05_textured_cube 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial05_textured_cube"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/tutorial05_textured_cube"  
fi
