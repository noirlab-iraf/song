# ZEROCOMBINE -- Process and combine zero level CCD images.

procedure zerocombine (input)

string	input			{prompt="List of zero level images to combine"}
file	output="Zero"		{prompt="Output zero level name"}
string	combine="average"	{prompt="Type of combine operation",
				 enum="average|median"}
string	reject="minmax"		{prompt="Type of rejection",
		enum="none|minmax|ccdclip|crreject|sigclip|avsigclip|pclip"}
string	ccdtype="zero"	{prompt="CCD image type to combine"}
bool	process=yes	{prompt="Process images before combining?"}
bool	delete=no	{prompt="Delete input images after combining?"}
bool	clobber=no	{prompt="Clobber existing output image?"}
string	scale="mode"	{prompt="Image scaling",
			 enum="none|mode|median|mean|exposure"}
string	statsec=""	{prompt="Image section for computing statistics"}
int	nlow=1		{prompt="minmax: Number of low pixels to reject"}
int	nhigh=1		{prompt="minmax: Number of high pixels to reject"}
int	nkeep=1		{prompt="Minimum to keep (pos) or maximum to reject (neg)"}
bool	mclip=yes	{prompt="Use median in sigma clipping algorithms?"}
real	lsigma=3.	{prompt="Lower sigma clipping factor"}
real	hsigma=3.	{prompt="Upper sigma clipping factor"}
string	rdnoise="rdnoise"	{prompt="ccdclip: CCD readout noise (electrons)"}
string	gain="gain"	{prompt="ccdclip: CCD gain (electrons/DN)"}
string	snoise="0."	{prompt="ccdclip: Sensitivity noise (fraction)"}
real	pclip=-0.5	{prompt="pclip: Percentile clipping parameter"}
real	blank=0.	{prompt="Value if there are no pixels"}

begin
	string	ims

	ims = input

	# Process images first if desired.
	if (process == YES)
	    ccdproc (ims, ccdtype=ccdtype, noproc=no)

	# Combine the flat field images.
	combine (ims, output=output, plfile="", sigma="", combine=combine,
	    reject=reject, ccdtype=ccdtype, subsets=no, delete=delete,
	    clobber=clobber, project=no, outtype="real", offsets="none",
	    masktype="none", blank=blank, scale=scale, zero="none", weight=no,
	    statsec=statsec, lthreshold=INDEF, hthreshold=INDEF, nlow=nlow,
	    nhigh=nhigh, nkeep=nkeep, mclip=mclip, lsigma=lsigma, hsigma=hsigma,
	    rdnoise=rdnoise, gain=gain, snoise=snoise, sigscale=0.1,
	    pclip=pclip, grow=0)
end
