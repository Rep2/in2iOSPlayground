#Chapter 6: Taking the service out
In the previus chapter you made a simple service call. But what if you are in the need of a different call? You would have to create a new class? As you can think, that is bad, what you should do then? The key is inheritance. You can create a class that handles all the neccessary default parameters. Other classes should inherit that root class and overide the parameters if neccessary. 

##GET and POST
There are two basic calls, the GET and the POST call. So you should enabla that two calls if you want a coherant class. If you are not familiar with the difference, here is a short introduction to [GET and POST](http://www.w3schools.com/tags/ref_httpmethods.asp)

## onSuccess and onFail
If you make a call, there can be two things, the call succeded and it failed. It can fail on the JSON parsing or on the request call. So why not make two functions that are called when that happens? You call one when the call succedes and the other when it fails. Other classes can override this method and implement theyr own. You can even pass an callback function that is called in the onSuccess or in the onFail functions.
#Task
Try to take the service out of your previus task. Try to move up as much as you can.
