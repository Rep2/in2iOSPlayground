#Chapter 4: User Input Interface
Now that you are familiar with the basics of Swift you should consider the design of your application. Lets say you want to make an app that handles some user input, you should pressent the views that way that the user would naturaly know what to fill in where. Some good designs can be found [here](http://www.appdesignvault.com/iphone-flat-ui-design-patterns/). If you want to check the data that the user inputs you can get the data that it should mathc from the database. But for now you can make a [singleton](http://codereview.stackexchange.com/questions/80246/swift-1-2-singleton-implementation) that simulates the database. If you want to make a login application that has two text field to input into, one for the password the other for the  username , be careful to not show the letters of the password text field. Check the content and send an alert if something goes wrong.

##Table cells
If you want to make an application that shows data in a table view, you can make a custom cell for it. You make them as a XIB file. You make them there and just instatiate them in your code. A tutorial how to make XIB cells can be found [here](http://stackoverflow.com/questions/28489720/uitableviewcell-subclass-with-xib-swift)
##Input methods
In the storyboard you can see a lot of input methods. With the text field you are already familiar with. Other examples are:
  - [Stepper](https://developer.apple.com/library/ios/samplecode/UICatalog/Listings/Swift_UICatalog_StepperViewController_swift.html)
  - [Segmented Control](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UISegmentedControl_Class/index.html)
These are easy to use examples. Take a good look at the others too.

#Task
So this is your first bigger task. So be smart about the structure of your code. Make an application that has a login view, the user should write the username and password. You have to check them and see if they match. If they do not match create a new user. Before you create a new user, ask him for the password once more and see if the passwords match. After the login did succed pressent some basic user data. Leave the user the option to change it, and if he does that save the data, so if he logs in again, the data is not the old one. The data should be pressented in a table view. The cells you use should be made as an XIB file. Use atleast three different input methods. Good luck!
