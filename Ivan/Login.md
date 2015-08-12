# Introduction to Viper and basic login design

If you are not familiar with the VIPER architecture you can read this [link](https://github.com/CroSnow/in2iOSPlayground/blob/master/VIPER.md), for a soft introduction.

## Viper realization

We will try to use singletons for interactors and presenters. That is not so good , but it will explain you how to connect them and the interaction between single classes.

Later you can change them for observers and have an even better architecture.

You should put all classes in five different groups 

  - View
  - Interactor
  - Presenter
  - Entity 
  - Routing

This is the core of the viper architecture. So let's start with what should each group do.
### View
  The view group handles all the design of the view, it also collects the data form it. You can contact the presenter in two ways.
  First, is trough a singleton instance. The bad thing about this is that you have to "hard code" which singleton to call. The good thing is that you can write it very easy.
  The second method and the better , but a little bit more complicate
  
### Presenter
  The Presenter is a good place to mark the behaviour of the view . The view should tell the presenter when a button is pressed and the presenter should decide what to do. For example, if you have a login screen, and the password field is blank , the presenter should check that and invoke an alert window which says that. Generally speaking alerts are a great thing to let the user know when something is not working as expected or he made a mistake.

### Interactor
  The interactor is used to get the data from all the data stores to the presenter. He handles the data logicli if needed. Here you should check if the login is good ( the password and username match), or if you use a web service, is the call to the service succesful.

### Routing 
  The routing or which view to show , is handled in the wireframe class.
  
### Wireframe

Lets start with the wireframe, the wireframe handles the information about which view to show. You instantiate a navigation controller and use it as a root view controller. All the other views you push on it.
You do that by sending the name of the view to the wireframe and instatiating it trough the storyboard by the id of the view.

### Entity
  You can keep the entity very simple. You should try to make all the known parameters declared as an optional with a defualt value.

## Design
The current design follows a specific sheme. You should have transparent views, which look simple and a picture behind them. Google iOS8 design for a couple of examples. Some good examples can be found [here](http://www.appdesignvault.com/iphone-flat-ui-design-patterns/)
You can keep it simple, just chose the colors smart. That is the most important thing. The collors should not interfere one with another. The text should be always visible and not blury.

### Moving background
On [this](http://www.appcoda.com/view-animation-in-swift/) link you can find all sort of simple animations for images in swift.
We set a image view and set it as the last layer. All the other ellements should come after it. The image should be bigger than the screen, so that it can move freely.
Next you just have to pick the animation. On the previus link that is explained really nice. We use a left to right animation. The animation time is Double.infinity. With that our animation never ends.

#Task
To check you'r knowledge about the viper architecture, make a simple login view. It should consist from two view. In the first there should be a welcome message and in the second boxex to fill the data in. Check the data and procede to a placeholder view. Keep always in mind to make it in the spirit of the viper architecture, and take a good look at you'r design. It should look prety and be user friendly.
