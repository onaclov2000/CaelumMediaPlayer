CaelumMediaPlayer
=================

++++++++++++

+++ Roku +++

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Download the repo, navigate to the roku folder then the CaelumMediaPlayer (sub folder)

    > make
    
    > make install
     
a zips folder should show up in the base folder

CaelumMediaPlayer\roku\CaelumMediaPlayer < -- Roku required files for mak/make install

CaelumMediaPlayer\zips <-- location of resulting zip file.

++++++++++++++

+++ Server +++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Download and install nodejs
Install connect npm package

Navigate to CaelumMediaPlayer\server and run the following (for port 80)

    > sudo node CaelumMediaServer


++++++++++++++

+++ Perl +++

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Right now run the perl script in the movies directory, redirect to movies.xml and save in the high level folder under xml
    > perl list_all_movies_for_roku.pl > movies.xml
