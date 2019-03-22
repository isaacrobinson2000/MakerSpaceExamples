# MakerSpaceExamples
This repository includes the code samples or examples used in the Arduino Maker Space Class.

# How to Install:

## Windows: 

1. Visit [this](../..) webpage.

2. Click the green "Clone or Download" in the top right corner of this page, and then 
click "Download ZIP" button that appears below. 

![](https://user-images.githubusercontent.com/47544550/54482264-7fa47a00-4806-11e9-93bd-e012fc0f9fdd.gif)


3. In the file explorer, go to the downloads folder. Right click on the zip file you just 
downloaded and click "Extract All...". Once a dialog appears, click the "Extract" button 
inside the dialog

![](https://user-images.githubusercontent.com/47544550/54482512-79180180-480a-11e9-8208-ef2e408d3ea6.gif)

4. After clicking "Extract" a new file explorer window should popup. Double click on the folder "MakerSpaceExamples-master" and then run the installer script by double clicking on "installer-windows". If a security dialog appears like in the picture below, click the "More-Info" link and then click the "Run Anyway" that appears at the bottom.

![](https://user-images.githubusercontent.com/47544550/54482554-fa6f9400-480a-11e9-8c0e-4e352b7c5754.gif)

5. A window with a black background should show up. If no error messages are displayed, then the examples are installed. Close the window and restart the Arduino IDE to see them under File -> Sketchbook -> MakerSpaceExamples in the Arduino IDE Menu.

## Mac
   Will be added soon...

## Linux

1. Visit [this](../..) webpage.

2. Click the green "Clone or Download" in the top right corner of this page, and then 
click "Download ZIP" button that appears below. 

![](https://user-images.githubusercontent.com/47544550/54482264-7fa47a00-4806-11e9-93bd-e012fc0f9fdd.gif)

3. Open the terminal by pressing <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>T</kbd>. A window similar to the one in the picture below should show up.

4. The examples are now installed, restart the Arduino IDE to see them.

![Picture of a terminal](https://user-images.githubusercontent.com/47544550/54848133-1315f900-4ca6-11e9-9aff-d6b4effcb312.png)

4. Copy and paste the lines below one by one into the terminal you opened above, pressing enter after pasting them.

```shell
curl -L "https://github.com/isaacrobinson2000/MakerSpaceExamples/tarball/master" > test.tar.gz
tar -xvzf test.tar.gz 
./isaacrobinson2000-MakerSpaceExamples-*/install-unix.sh
rm -rf isaacrobinson2000-MakerSpaceExamples-*/
rm test.tar.gz
```
