![icon](http://software.rochus-keller.info/VerilogCreator_100.png)
## Welcome to QtcVerilog 

QtcVerilog is a stand-alone Verilog IDE featuring the [VerilogCreator](https://github.com/rochus-keller/VerilogCreator) plugin. The primary purpose of QtcVerilog is to simplify the deployment of VerilogCreator and to avoid compatibility issues with QtCreator's unstable plugin API.

QtcVerilog is a subset of [QtCreator 3.6.1](https://download.qt.io/official_releases/qtcreator/3.6/3.6.1/). The subset was slightly modified to get a minimal version of QtCreator only including the Core, Texteditor, Projectexplorer and VerilogCreator plugins. To avoid interferences with existing QtCreator installations the executable is called QtcVerilog instead of qtcreator; the same applies to the configurations and corresponding directories.

QtcVerilog is further developed here independently of its original repository. The first published version of QtcVerilog is 3.6.2; it will never reach version 4.0.0. The original QtCreator 3.6.1 was the last available version of the 3.x series before the Qt Company switched to QtCreator 4.x.


![screenshot](http://software.rochus-keller.info/VlCreator_screenshot2.png "VerilogCreator Screenshot")

### Binary Versions

Current binary versions can be downloaded from here. The binary versions are delivered as ZIP (Windows), TAR.GZ (Linux) or DMG (Macintosh) files which can be easily downloaded and unpacked without the need to run an installer. The VerilogCreator plugin is included.

Linux: http://software.rochus-keller.info/QtcVerilog_linux_i386.tar.gz

The Linux version does not include the Qt binaries. It was compiled on Ubuntu 14.04 LTS i386 using Qt 5.4.2. If you have a Qt version >= 5.4 installed on your system the binaries should work. Otherwise either find out which libraries are missing (e.g. using ldd) and install them; you can also build QtcVerilog yourself (see below).


Windows: http://software.rochus-keller.info/QtcVerilog_win32.zip

Mac: http://software.rochus-keller.info/QtcVerilog_mac_x86_64.dmg

The Windows and Mac versions include a copy of the Qt libraries. 

### Build Steps
Follow these steps if you want to build QtcVerilog yourself:

1. Make sure that the Qt base development package is installed on your system. At least Qt 5.4.0 is required.
1. Create a build directory; let's call it BUILD_DIR.
1. Download the QtcVerilog source code from https://github.com/rochus-keller/QtcVerilog/archive/master.zip and unpack it to the BUILD_DIR; rename the subdirectory to "QtcVerilog".
1. Goto the BUILD_DIR/QtcVerilog subdirectory and execute `QTDIR/bin/qmake -r` (see the Qt documentation concerning QTDIR).
1. Run make; after a couple of minutes the application is compiled to the bin, lib and libexec subdirectories.
1. Build the VerilogCreator plugin (see https://github.com/rochus-keller/VerilogCreator for information); when successfully built you can delete the src subdirectory from BUILD_DIR/QtcVerilog. Note that the share subdirectory is needed at runtime and should not be deleted.
1. Start QtcVerilog from the bin subdirectory.

Instead of using qmake and make you can open QtcVerilog.pro using QtCreator and build it there.

### Support
If you need support or would like to post issues or feature requests please use the Github issue list at https://github.com/rochus-keller/QtcVerilog/issues or send an email to the author.



