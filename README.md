Raspberry Pi Framebuffer Copy
=============================
This program used for copy primary framebuffer to secondary framebuffer (eg. FBTFT). It require lastest raspberry pi firmware (> 2013-07-11) to working properly.

一键命令，复制->粘贴->回车
----
树莓zero&w，树莓1代
```
wget -O - https://raw.githubusercontent.com/wdmomoxx/rpi-fbcp/master/rpi1.sh | /bin/sh
```
树莓2代，树莓3代&3代+
```
wget -O - https://raw.githubusercontent.com/wdmomoxx/rpi-fbcp/master/rpi3.sh | /bin/sh
```

Build
-----

    $ mkdir build
    
    $ cd build
    
    $ cmake ..
    
    $ make 

Pi1 Install
-----

    $ cd ~
    
    $ git clone https://github.com/wdmomoxx/rpi-fbcp.git
    
    $ cd rpi-fbcp
    
    $ sudo chmod +x autoinstall-pi1.sh
        
    $ ./autoinstall-pi1.sh

Pi3 Install
-----

    $ cd ~
    
    $ git clone https://github.com/wdmomoxx/rpi-fbcp.git
    
    $ cd rpi-fbcp
    
    $ sudo chmod +x autoinstall-pi3.sh
        
    $ ./autoinstall-pi3.sh
