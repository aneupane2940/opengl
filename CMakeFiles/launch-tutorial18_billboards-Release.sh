#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/tutorial18_billboards_and_particles/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Release/tutorial18_billboards 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Release/tutorial18_billboards"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/Release/tutorial18_billboards"  
fi
