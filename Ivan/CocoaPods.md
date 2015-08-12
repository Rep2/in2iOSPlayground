#Cocoa Pods
Cocoa pods is a dependancy manager for Swift and objective C Cocoa projects. It has access to a couple thousand of liabraries. 

##Benefits of using Cocoa Pods
If you don't use a dependancy manager, you have to include every library separetly into every project you use it in. That produces a couple of problems
  - The libraries do not update. You always use the one you put in. If there is a newer version , you have to manualy put it in
  - The libraries are inside your project and are wasting space.
  - You dont have a central place where you can see the libraries you have access to.
  - You have access to the source code of the libraries and by which you have to resist the urge to change to code from the libraries

All of these problems are solved by using CocoaPods.

##Installation
To install CocoaPods you have to do the following:
  - Open the terminal
  - write:"sudo gem install cocoapods" (you will be maybe asked the password of your computer after that)
  - write:"pod setup --verbose" (--verbose is not neccessary to write, but with it , the proccess of installing will be logged in the terminal, and you wont have the feelling like the terminal froze)

And that's it. Congratulations you have successfully installed CocoaPods.

#Using CocoaPods
If you ever have the need to use an external library while writing your project, then you start to use CocoaPods. You use it the following way.
  - Close XCode(if it is open)
  - Place the terminal inside the directory of your project.
  - Write in the terminal :"pod init" , by that you create the base directory file whic CocoaPods uses (Podfile).
  - Write "open -a XCode Podfile" , by doing that you open the recently created podfile with xcode.
  - Change the first two lines into:

    - platform : ios, 8.0
    - use_frameworks!
  - Inside the first target add "pod 'libraryName','library.version.id'
  - In the terminal write "pod install" (check if you are still in the project directory)
When you open the project , do not opet with the old project file, open it with the .xcworkspace file.
##Using the installed libraries
After you have installed the libraries, just write "import libraryName" inside a file , and you can use the library.

##Additional options
The library version is written in a specific format :"major.minor.patch" all as whole numbers (example :"1.2.3") While writing you can add "~>" before "major" (example “~> 1.2.0”). By that you signal that you always want the most up to date patch (from the previous example that would be a library not lower than 1.2.0 and lower than 1.3.0)

##Objective C in Swift
If you have a library written and used in Objective C , you cannot use it from the start with swift. You have to add something that is called a [bridging-header](https://bohemianpolymorph.wordpress.com/2014/07/11/manually-adding-a-swift-bridging-header/). Add the header to the project and inside it write "#import <libraryName/libraryName.h>". Now you can use the library with your swift files.

usefull [link](http://www.raywenderlich.com/97014/use-cocoapods-with-swift)
