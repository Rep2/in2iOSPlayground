#Chapter 5: RESTful service
If you are not familiar with what a REST service is take [here](https://en.wikipedia.org/wiki/Representational_state_transfer) a look. The next thing to get started is to watch the [iOS Networking with Swift](https://www.udacity.com/course/ios-networking-with-swift--ud421) tutorial. After watching that tutorial you should be familiar with basic service calls.

##Getting the data
To get the data from a REST service call you have to make a couple of steps.
  - First create a URL adress from the string . To make that call NSURL(String: urlString) with the url in the form of a string.
  - Second string to do is to create a request. The request is made by calling NSURLRequest with the before created url parameter.
  - The next step is to send the request:

   NSURLConnection.sendAsynchronousRequest( request, queue: NSOperationQueue(), completionHandler:{
  (response:NSURLResponse!, data: NSData!, downloadError: NSError!) -> Void in
  *code that handles the completition*
})

