INSTALLATION (Jan97)              song              INSTALLATION (Jan97)



                SONG: STELLAR OSCILLATIONS NETWORK GROUP
              Release Notes and Installation Instructions



SUMMARY
The SONG external package is used to reduce SONG Coude Feed data.


RELEASE INFORMATION

January 1997
    This is a prototype.


INSTALLATION INSTRUCTIONS
Installation of this external package consists of obtaining  the  files,
creating   a   directory   containing  the  package,  and  defining  the 
environment to load and run the package.  The package may  be  installed
for  a  site or as a personal installation.  If you need help with these
installation  instructions  contact  iraf@noao.edu  or  call  the   IRAF 
HOTLINE at 520-318-8160.

[1-site]
    If  you  are  installing the package for site use then login as IRAF
    and edit the IRAF file, extern.pkg, defining the  packages.   Define
    the  environment variable "song" to be the pathname to the song root
    directory; the pathname must be terminated with a '/'.
    
        % cd $hlib
        % vi extern.pkg
    
        reset song = /local/song/       # UNIX example
        task  song.pkg = song$song.cl
    
    Near the end of  the  extern.pkg  file,  update  the  definition  of
    helpdb  so  it  includes  the song help database, copying the syntax
    already  used  in  the  string.   Add  this  line  before  the  line 
    containing a closing quote:
    
        ,song$lib/helpdb.mip\

[1-personal]
    If  you  are  installing  the package for personal use define a host
    environment variable with the pathname of the  directory  where  the
    package  will  be  located.   Note that Unix pathnames must end with
    '/'.  For example:
    
        % setenv song /local/song/
    
    In your login.cl or loginuser.cl file make the following definitions
    somewhere before the "keep" statement.
    
        reset song = /local/song/
        task  song.pkg = song$song.cl
        printf ("reset helpdb=%s,song$lib/helpdb.mip\nkeep\n",
            envget("helpdb")) | cl
        flpr

[2] Login  into  IRAF.  Create a directory to contain the package files.
    This directory should be outside the standard IRAF directory tree.
    
        cl> mkdir song$
        cl> cd song

[3] The package is distributed as a tar archive for the  sources.   Note
    that  IRAF includes a tar reader.  The tar file(s) are most commonly
    obtained via anonymous ftp.  Below is an example for a Unix machine.
    
        cl> ftp iraf.noao.edu (140.252.1.1)
        login: anonymous
        password: [your email address]
        ftp> cd iraf/extern
        ftp> get song.readme
        ftp> binary
        ftp> get song.tar.Z
        ftp> quit
        cl> !uncompress song.tar
    
    The readme file contains these instructions.
    
    Upon request the tar file(s) may be otained on tape  for  a  service
    charge.   In  this  case  you  would  mount the tape and specify the
    device name in the next step.

[4] Extract the source files from the tar archive using 'rtar".
    
        cl> softools
        so> rtar -xrf <archive>  where <archive> is the host name of the
                                 archive file or the IRAF tape
                                 device for tape distributions.
        so> bye
    
    The  archive  file  can  be  deleted  once  the  package  has   been 
    successfully installed or the tape device can be freed.

This  should  complete  the  installation.  You can now load the package
and begin testing and use.
