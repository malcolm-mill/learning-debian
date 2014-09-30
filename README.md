<h1>learning-debian</h1>
<p>===============</p>

<p>The files in directory 'build-gruezi' follow the example of manually creating a debian package found in Martin Krafft's "The Debian System: Concepts and Techniques", p431.</p>

<p>Your debian package is made up of the core files:</p>
<pre>
changelog.Debian;
control;
copyright;
debian-binary;
gruezi;
gruezi.1.
</pre>

<p>My script 'build-gruezi.sh' copies these files to ~/learning-debian/ and builds the package there. </p>

<p>Please refer to Debian documentation - or Krafft's excellent book - for the meaning and standards associated with the files and their place in the source tree. </p>

<p>Browse the core files first to see what you're making then run build-gruezi. </p>

<p>If you want to install it onto your system, from ~/learning-debian/ run 'sudo dpkg --install gruezi.deb' (just to see it working). You won't want this around so remember to remove with 'sudo apt-get purge gruezi'. If you want to make modifications, rebuild and re-install you must delete directory '~/learning-debian/ and all its contents. The build-gruezi script expects it not to exist each time it's run.</p>

<p>Then, play with the contents and filenames to build your own package that does something a bit more.</p>

<p>Please note: file permissions are very lenient here (I was having trouble running the script with the permissions Krafft uses).</p>

<p>Also, the script could be easily changed so at least file and package names aren't hard coded in. This is on the TODO list.</p>

