#Chapter 5: RESTful service
If you are not familiar with what a REST service is take [here](https://en.wikipedia.org/wiki/Representational_state_transfer) a look. The next thing to get started is to watch the [iOS Networking with Swift](https://www.udacity.com/course/ios-networking-with-swift--ud421) tutorial. After watching that tutorial, you should be familiar with basic service calls.

##Getting the data
To get the data from a REST service call you have to make a couple of steps.
  - First create a URL adress from the string . To make that call NSURL(String: urlString) with the url in the form of a string.
  - Second string to do is to create a request. The request is made by calling NSURLRequest with the before created url parameter.
  - The next step is to send the request:

   NSURLConnection.sendAsynchronousRequest( request, queue: NSOperationQueue(), completionHandler:{
   response:NSURLResponse!, data: NSData!, downloadError: NSError!) -> Void in
   
   *code that handles the completion*
   })

If there was an error while the call was made that error is logged inside the downloadError. You have to check if an error occurred. If there was no error, then you can proceed to handle the data. For most of the time you will recieve a the data in a [JSON](https://en.wikipedia.org/wiki/JSON) format. A good tool to preview the data can be found [here](http://json.parser.online.fr/). That tool parses the data and forms a JSON for you to see it.
To parse the data to a JSON inside your class you have to do the following:

var parsingError:NSError? = nil

let parsedResult:AnyObject! = NSJSONSerialization.JSONObjectWithData(data,options:

NSJSONReadingOptions.AllowFragments,error: &parsingError)

After that you have to check the parsingError. If it is not null something went wrong while parsing.
Usealy the JSON serialized data is in the form of an array or dictionary.
##Callback
A callback function is a function that you pass into another function as an argument. The callback function is then called inside the function that it was passed. That is necessary if you want to ensure the right call order of functions. Swift is running in multiple threads and if you call one function after another that does not mean that the second function will begin when the first has ended.
It is practical that you pass a callback function when you call a service function, that way you ensure to get the data when it is ready. Another good thing is that you do not need to think about how will the callback handle the data. You just have to pass the data, and the callback can be different every time.

#Task
Make an app that uses REST service calls. It can be a simple two view application. On the first view there should be a button that when pressed makes the call and when the data is ready moves to the second view. On the second view there should be some information take out of the JSON and presented in a nice way. Find a service or use [this](http://api.openweathermap.org/data/2.5/weather?q=London,uk) one. It is a weather forecast for London. Think of a way that the user can not press the button when the call is made, you do not want to give the user a chance to make multiple calls for no reason. And as always keep the design in mind. 
