# Global MKPKG definitions for the package.

$set XFLAGS	= "$(XFLAGS) -p song"
$set XVFLAGS	= "$(XVFLAGS) -p song"
$set LFLAGS	= "$(LFLAGS) -p song"

#$ifeq (MACH, sparc) then
#    $include "song$lib/mkpkg.sf.SUN4"
#$else $ifeq (MACH, i386) then
#    $include "song$lib/mkpkg.sf.I386"
#$else $ifeq (MACH, f68881) then
#    $include "song$lib/mkpkg.sf.SUN3"
#$else $ifeq (MACH, ffpa) then
#    $include "song$lib/mkpkg.sf.SUN3"
#$else $ifeq (MACH, vms) then
#    $include "song$lib/mkpkg.sf.VMS"
#$else $ifeq (MACH, ddec) then
#    $include "song$lib/mkpkg.sf.DDEC"
#$else $ifeq (MACH, dmip) then
#    $include "song$lib/mkpkg.sf.DMIP"
#$else $ifeq (MACH, rs6000) then
#    $include "song$lib/mkpkg.sf.AIX3"
#$else $ifeq (MACH, mips) then
#    $include "song$lib/mkpkg.sf.MIPS"
#$end
