<<<<<<<<<<<<<<<<<<<<<WINDOWS 9X ONLY>>>>>>>>>>>>>>>>

<<<<<<<<<<<<<<<<<<<<<oc@lineone.net>>>>>>>>>>>>>>>>>
<<<<<<<<<<<<<http://website.lineone.net/~oc>>>>>>>>>


If you make a MENU for a cd in a folder on your Desktop
The path is.

Root\windows\desktop\your files      >> won't work when you write the cd

In my vdrive the path is

Root\your files                      >> same as the cd path

Run Cdmenu.exe >>  
You should get a 

Runtime error '76'
Path not found '\Setup1\Icon.ico' 

Unless all these files are in the root dir then that's fine but it will 
Take some cleaning up when you're done.

Make a Virtual Drive by clicking the Vdrive.vbs file

Then copy all the files and dirs in this dir to it and run Cdmenu.exe again

>>>>>>>>>Now isn't that good now all you got to do is say thanks<<<<<<<<<<<<

For getting around the runtimes read Vbrun60.txt
 
If you need ocx to be registered add something like this to the Vb6rtime.bat file
Don't forget to add a check for your.ocx in the Vb6rtime.bat first

Copy your.ocx "%windir%\system\your.ocx
%windir%\system\regsvr32 /s %windir%\system\your.ocx
The /s is for silent no message box
