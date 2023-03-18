#{ SONG -- Stellar Oscillations Network Group Package

rvx

cl < "song$lib/zzsetenv.def"
package song, bin = songbin$

# CORE TASKS

task	hedit		= "songsrc$hedit.cl"
task	hselect		= "songsrc$hselect.cl"
task	fixpix		= "songsrc$fixpix.cl"

# CCDRED

set	ccdred		= "noao$imred/ccdred/"
set	ccddb		= "ccdred$ccddb/"

task	ccdlist		= "ccdred$x_ccdred.e"
task	ccdproc,
	combine		= "songsrc$x_ccdred.e"
task	flatcombine	= "songsrc$flatcombine.cl"
task	zerocombine	= "songsrc$zerocombine.cl"

# ONEDSPEC
set	onedspec	= "noao$onedspec/"
task	continuum,
	sfit		= "songsrc$x_onedspec.e"
task	sarith,
	specplot,
	splot		= "onedspec$x_onedspec.e"
task	scopy		= "songsrc$scopy.cl"

# APEXTRACT
set	apextract	= "noao$twodspec/apextract/"
task	apall,
	apflatten	= "songsrc$x_apextract.e"
task	apall1		= "apextract$apall1.par"
task	apflat1		= "apextract$apflat1.par"
task	apdefault	= "apextract$apdefault.par"
task    apedit,
        apfind,
        aprecenter,
        apresize,
        apsum,
        aptrace         = "apextract$x_apextract.e"

# Hide tasks from the user
hidetask apall1, apflat1

# RVX

task	fxcor		= "songsrc$fxcor.cl"

clbye
