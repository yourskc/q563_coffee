# q563_coffee
Example Qt5.6.3 project for running on Renesas RZG2L

## 1. Qt installation 

Download Qt 5.6.3 at

https://download.qt.io/new_archive/qt/5.6/5.6.3/

- For Windows 11, use 

qt-opensource-windows-x86-mingw492-5.6.3.exe

- For Ubuntu 22.04, use

qt-opensource-linux-x64-5.6.3.run

For building the final executable running on RZG2L, please use Linux version.    

Windows version Qt can be used for early stage UI development ( build and run the project with desktop kits ), since Windows environment is more convenient to some people.  

After the installation of Qt5.6.3, please follow the guide to install the extra tool chain on Qt( for Linux version only).

http://moil.caece.net/%e5%9c%a8-ubuntu-22-04-%e4%b8%8a%e5%bb%ba%e7%ab%8b-renesas-rz-g2l-%e7%9a%84%e8%b7%a8%e5%b9%b3%e5%8f%b0-qt-%e9%96%8b%e7%99%bc%e7%92%b0%e5%a2%83/

Please noted, the inferface of Qt version 5.12.10 in the above guide is only a little different with Qt5.6.3. both Qt versions can be used. Newer Qt5.12.10 come with better Example projects, however, compile project in the older Qt5.6.3 ensure the final executable can successfully run on the target board.     

If you installed multiple versions of Qt creator, before the running of another version, please make a copy of the old QtProject folder under:

- Windows : under %appdata% folder

- Ubuntu : under ~/.config folder

## 2. Development flow 

For Windows version, we only to build and run desktop version to make sure everything goes well. 

For Linux version, we can build and run desktop version for most of the time. Then switch to RZG2L kits, then build and run the executable on RZG2L for confirmation.

Please use this repo as a Qt test project, to verify that your environment has been set up successfully. 

Run Qt creator, File/open file or project then browse to  q563_coffee.pro, 

Ctrl-B to build project, Ctrl-R to run on desktop for test. 

Click on Projects on the left side, add kits for RZG2L, Ctrl-B to build,

browse to the RZG2L build output folder,  copy the executable named q563_coffee to shoewhere like ~ for transfering to RZG2L later.

Finally, go to your RZG2L target board,

scp user@ip_of_desktop:/home/user/q563_coffee .

(enter 'y' then password)

./q563_coffee

[![q563_coffee](https://img.youtube.com/vi/ssdR8kY_3K8/0.jpg)](https://www.youtube.com/watch?v=ssdR8kY_3K8)   





