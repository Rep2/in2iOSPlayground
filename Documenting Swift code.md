# Introduction to documentation of Swift code.
For Xcode 6.4

This page is currently under development. Fell free to make improvements!

As said in [this article](http://nshipster.com/swift-documentation/), code structure and organization is a matter of pride for developers. I would also say that it generally improves product quality, especially when working in teams. One of the main parts of code structure and organization is code documentation. Let's learn how to do it for Swift. 

## [reStructuredText](http://docutils.sourceforge.net/rst.html)

Swift code documentation is based on [reStructuredText](https://en.wikipedia.org/wiki/ReStructuredText) , lightweight markup language simmilar to [Markup Language](https://en.wikipedia.org/wiki/Markup_language). 

This came as a suprise as Apple used [HeaderDoc](https://developer.apple.com/library/mac/documentation/DeveloperTools/Conceptual/HeaderDoc/intro/intro.html#//apple_ref/doc/uid/TP40001215-CH345-SW1), set of tools for embedding structured comments in source code and header files, to document Objective-C code. With this change [Quick Help](https://developer.apple.com/library/ios/recipes/xcode_help-general/Chapters/AboutQuickHelp.html), Xcode documenting tool, is no longer compatible with HeaderDoc tool. 

reStructuredText is simple and expresive and as such has becomed quite popular. All code can be documented with basic sintaks described in this [article](http://nshipster.com/swift-documentation/). When done with this tutorial complete [first example].

## [Swift 2](https://developer.apple.com/swift/blog/?id=29)

Apple recently announced Swift 2 which is supose to come out in fall of 2015. Among others, it seams that Swift 2 will use [Markup Language](https://en.wikipedia.org/wiki/Markup_language) as talked about in this [forum post](https://forums.developer.apple.com/thread/3491) and listed in this [forum post](https://forums.developer.apple.com/message/5513#5513). 

Not much is currently known about Swift 2 documentation sintaks. Only post I could find is [this one](http://ericasadun.com/2015/06/14/swift-header-documentation-in-xcode-7/) which is somewhat breif. Even this [offical tutorial app](https://developer.apple.com/library/prerelease/ios/samplecode/DemoBots/Listings/Swift_SceneOverlay_swift.html#//apple_ref/doc/uid/TP40015179-Swift_SceneOverlay_swift-DontLinkElementID_86) writen by Apple for Swift 2 introduction contains non formated documentation. 

Have in mind that documentation will change and with it tools we use will need a change. I think its still useful to learn reStructuredText as it's simple enaugh to use even for couple of months.




