#!/bin/sh
bindir=$(pwd)
cd /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/misc05_picking_BulletPhysics 
	else
		"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/misc05_picking_BulletPhysics"  
	fi
else
	"/Users/achyutneupane/Desktop/ogl-OpenGL-tutorial/build/MinSizeRel/misc05_picking_BulletPhysics"  
fi
