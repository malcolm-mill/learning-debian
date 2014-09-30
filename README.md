<pre>
learning-debian
===============

The files in directory 'build-gruezi' follow the example of manually creating a debian package found in Martin Krafft's "The Debian System: Concepts and Techniques", p431.

Your debian package is made up of the core files:

changelog.Debian;
control;
copyright;
debian-binary;
gruezi;
gruezi.1.

My script 'build-gruezi.sh' copies these files to ~/learning-debian/ and builds the package there. 

Please refer to Debian documentation - or Krafft's excellent book - for the meaning and standards associated with the files and their place in the source tree. 

Browse the core files first to see what you're making then run build-gruezi. 

Then, play with the contents and filenames to build your own package that does something a bit more.

Please note: file permissions are very lenient here (I was having trouble running the script with the permissions Krafft uses).

Also, the script could be easily changed so at least file and package names aren't hard coded in. This is on the TODO list.

</pre>