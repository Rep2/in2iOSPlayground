# Introduction to Viper and basic login design

If you are not familiar with the VIPER architecture you can read this [link](https://github.com/CroSnow/in2iOSPlayground/blob/master/VIPER.md), for a soft introduction.

## Viper realization

We will try to use singletons for interactors and presenters. These is not so good but it will explain you how to connect them and the interaction betwen single classes.

Later you can change them for observers and have an even better architecture.

You should put all classes in 5 different groups 

  - View
  - Interactor
  - Presenter
  - Entity 
  - Routing
This is the core of the viper architecture. So lets start with what should each group do.
### View
  The view group handles all the design of the view, it also collects the data form it. You can contact the presenter in two ways.
  First is trough a singleton instance. The bad thing about this is that you have to "hard code" which singleton to call. the good thing is that you can write it very easy.
  The second method and the better , but a litle bit more complicate
### Wireframe

Lets start with the wireframe, the wireframe handles the information about which view to show. You instatiate a navigation controller and use it as a root view controller. All the other views you push on it.
You do dat by sending the name of the view to the wireframe and instatiating it trough the storyboard by the id of the view.

## Design
The current design follows a specific sheme. You should have transparent views, which look simple and a picture behind them. Google iOS8 design for a couple of examples. Some good examples can be found [here](http://www.appdesignvault.com/iphone-flat-ui-design-patterns/)
You can keep it simple, just chose the colors smart. That is the most important thing. The collors should not interfere one with another. The text should be always visible and not blury.

### Moving background
On [this](http://www.appcoda.com/view-animation-in-swift/) link you can find all sort of simple animations for images in swift.
We set a image view and set it as the last layer. All the other ellements should come after it. The image should be bigger than the screen, so that it can move freely.
Next you just have to pick the animation. On the previus link that is explained realy nice. We use a left to right animation. The animation time is Double.infinity. With that our animation never ends.
