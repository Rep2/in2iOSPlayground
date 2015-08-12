#Chapter 3: Controllers and more navigation
There are a couple of basic controller that the Interface Builder tool from XCode IDEa has.
  - UIViewController  the base view controller.
  - UINavigationController a controller which enables going back to a previues view.
  - UITableViewController a view with a table, that you already used in the second chapter
  - UITabBarController a controller with more subviews and a tab bar to switch between them.
  - UISplitView Controler or a master detail view.
  - UIPageViewController which gives you a feeling of reading a book.

##UIViewController
The UIViewController is the most basic view controller, it has a simple view and you can put other views or elements on him. You are already familiar with it if you read the Chapter 1.

##UITableViewController
The UITableViewController is a compact view controller, that you can use to display varius data or if you have an application that has code generatad models. Then you can put those model in a cell and simply add the cells to the table view.

##UINavigationController
The UINavigationController is a cornerstone of almost every App. It is something that you see at first. It has a navigation stack on which it puts all the views that come after it. It gives you a back button, which when you press it pops the top view from the stack and you see the view that was before it. If you want to learn something more about it you should consult the [Apple Developer page](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UINavigationController_Class/)

##UITabBarController
The UITabBarController is used when you have multiple views which are conected. It offers a tab bar with pictures, each picture represents a different view. The tab bar is pressent on all views that the UITabBarController is connected to. When the user presses a item on the tap bar the view changes to the view represented by that item. A more detail and practical example can be found [here](http://makeapppie.com/2014/09/09/swift-swift-using-tab-bar-controllers-in-swift/).

##UIPageViewController
This controlles uses a simple view which you can fill with text or some other simple format. You use it as a book and move the pages. A good tutorial can be found [here](https://www.youtube.com/watch?v=8bltsDG2ENQ).

##UISplitViewController 
The UISplitViewController or a master detail view is an form that consists of two views. The master and the detail view. The master view is a table view which has multiple atributes. When the user presses one of the rows, the SplitViewController shows the detail view with the data depending on selected row. There are two good tutorial which explain the Split View Controller more detailed. The [first](http://www.raywenderlich.com/94443/uisplitviewcontroller-tutorial-getting-started) and the [second](http://rshankar.com/splitviewcontroller-example-in-swift/)
