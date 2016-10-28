#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/tutorial17_rotations/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/tutorial17_rotations 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/tutorial17_rotations"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/RelWithDebInfo/tutorial17_rotations"  
fi
