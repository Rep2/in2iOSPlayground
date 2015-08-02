# Introduction to iOS MVC, connecting View and Controller

Apple extensivly uses Model-View-Controller (MVC) design pattern in building iOS and OS X applications. If you are not familiar with MVC read this brief [Cocoa Core Competencies article](https://developer.apple.com/library/ios/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html). Also take a look at [MVC wiki page](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) and if you want read [this longer Apple intro](https://developer.apple.com/library/ios/documentation/General/Conceptual/CocoaEncyclopedia/Model-View-Controller/Model-View-Controller.html).


## View Controllers and Views

View Controllers are basic application building blocks. Read thru [View Controller Basics](https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/AboutViewControllers/AboutViewControllers.html#//apple_ref/doc/uid/TP40007457-CH112-SW10). Carefully read first two sections but breeeze over the rest.

What you should know:

	- Describe UIScreen and UIWindow? Where is each element used and for what? 
	- What is UIView and why do we use it?

	- What is UIViewController? Why and where is it used?
	- How does UIViewController controll UIView?

	- What is Storyboard?

## Building a Basic UI

Now that we know that iOS apps consist of many UIViews, and that each UIView has its UIViewController, lets see how to add elements to our starting UIView.

Read and finish this tutorial. It will take you thru [Building a Basic UI](https://developer.apple.com/library/prerelease/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson2.html#//apple_ref/doc/uid/TP40015214-CH5-SW1).

This tutorial is also an example for this section. Folow it and build your first application. When done add your project to this directory.


## Connecting the UI to Code

We will continue with same tutorial. Follow [tutorial](https://developer.apple.com/library/prerelease/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson3.html#//apple_ref/doc/uid/TP40015214-CH22-SW1) and when done, add your project to this dictionary.


## View Controller deeper look

To finish this section we take a deeper look into UIViewController. Follow this [tutorial](https://developer.apple.com/library/prerelease/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson4.html#//apple_ref/doc/uid/TP40015214-CH6-SW1).


## Task

At the end of this section complete following task.

Build basic application that simulates user registration. Application should consist of one UIView which contains fields for username and password input, date picker for birthday input and switch for gender input. All inputs should be intuitive (use labels as needed). Finnaly, add button to bottom of the screen. On button press print all inputs in Developer Console.
