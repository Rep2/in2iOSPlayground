  
  
  1. [Getting started](https://github.com/Rep2/in2iOSPlayground/blob/master/Chapter%201:%20Getting%20started.md)
  2. [Swift](https://github.com/Rep2/in2iOSPlayground/blob/master/Chapter%202:%20Swift.md)
  

# Chapter 2: Swift

This page is in developement. Fell free to improve it!

This chapter introduces developer with programming language Swift. We use Swift for iOS and OS X native application development.

Chapter is divided into three parts: brief [Introduction](https://github.com/Rep2/in2iOSPlayground/blob/master/Chapter%202:%20Swift.md#introduction), which introduces developer with Swift and its basic concepts, Advanced which deals with advanced stuff and Finishing Touches which circles this chapter and deals with Swift novelties. Each part is divided into sub parts which come with examples and tasks. I recommend finishing only Basics and going on to Chapter 3. From there tutorials will reference you to this one when needed.


## Introduction

If you are not familiar with [Object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming) it would be best to learn the basics before starting this tutorial. Read thru first two wiki chapters. Then take a look at first two chapters of this [tutorial](http://www.raywenderlich.com/81952/intro-object-oriented-design-swift-part-1) which we will later complete.

We will heavily use [The Swift Programming Language](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0) book. Feel free to read it as you see fit just be sure to look at questions after each chapter.

Start with reading [About Swift](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0) page.

When done breeze through [wiki introduction](https://en.wikipedia.org/wiki/Swift_(programming_language)), just first chapter. 

If you are not familiar with terms like [Multi-paradigm](https://en.wikipedia.org/wiki/Multi-paradigm_programming_language), [Functional programming](https://en.wikipedia.org/wiki/Functional_programming), [Imperative programming](https://en.wikipedia.org/wiki/Imperative_programming), [Static type-checking](https://en.wikipedia.org/wiki/Type_system#Static_type-checking) and [Strong and weak typing](https://en.wikipedia.org/wiki/Strong_and_weak_typing) be sure to take a look at them first.


### The Basics

Let's start. Open Xcode and create new Playground. You create Playground from File -> New -> Playground. Read [The basics](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID310) and [Costants and variables](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID310) chapters. Test code you learn in Playground.

When done you should be able to answer these questions.

  - What are constants and variables in Swift? How and why do we use them?
  - What is type annotation? How and why do we use it?
  - What is string interpolation?

Continue with [Integers](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID317) and read up to [Type Aliases](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID327).

  - Name Swift numeric types. 
  - What is type safety and how is it represented in Swift?
  - What is type inference?
  - How do we covert numeric types?

Learn about [Booleans](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID328) and [Tuples](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID329).

  - What is Boolean type? How do we use it?
  - What is Tuple type? How do we use it?

[Optionals](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID330) are somewhat new in programming world so be sure to understand it. 

  - Why optionals?
  - How and when do we use optionals?
  - What is nil?
  - What is forced unwrapping? Show an example.
  - What is optional binding? Show an example.
  - What is implicitly unwrapped optional? Show an example.
  
To conclude this book chapter look at [Assertions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID335).


### Basic Operators

This [chapter](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID60) is very basic. If you have some programming experience just breeze thru it. If you are not familiar with covered topics read thru it carefully. 

Be sure to read [Nil Coalescing Operator](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID72) and [Range Operators](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID73).


### Strings and Characters

Start with [Strings](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID285) and read up to [Unicode](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID293).

  - What is String in Swift? Create one.
  - What dose "Strings Are Value Types" mean?
  - Print all strings characters.
  - Concatinate strings using addition operator and string interpolation.

Before reading [Counting Characters](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID297) quickly read thru [Unicode](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID293).

  - How do we count string characters? Why do we use this method? Add example.

Carefully read [Accessing and Modifying a String](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID494).

  - What is string index?
  - How do we access character at particular string position? Add example.
  - How do we add character at specific position? Add example.
  - How do we add string to another string at specific position? Add example.
  - How do we remove portion of string? Add example.

Quickly read thru [rest of the book chapter](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html#//apple_ref/doc/uid/TP40014097-CH7-ID298).


### Collection Types

Start with [basics](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID105) and read thru [Array](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID107) chapter.

  - What is Array in Swift? Declare basic String Array.
  - Show basic Array initialization options.
  - How to access and modify Array data? Add couple of examples.
  - How to iterate over Array data? Add two examples.

Learn about [Sets](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID484).

  - What is Set in Swift? Why use them? Add an example.
  - Do all Array examples with Set.

Learn about [Set Operations](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID490).

  - Show examples for union, subtract, exclusiveOr and intersect methods.
  - Compare sets.
  - What is hash value and why do Sets need it?

Learn about [Dictionaries](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html#//apple_ref/doc/uid/TP40014097-CH8-ID113).

  - What are Dictionaries in Swift?
  - Do all Array examples with Dictionary. 


### Control Flow

Swift provides all the familiar control flow statements from C-like languages with a couple of nuances. You can read thru this [chapter](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120) quickly, but don't skip over details as they contain Swift specific terms.


### Functions

Functions are self-contained chunks of code that perform a specific task. Swift adopts parts of functional paradigm and as such allows for functions, methods that do not belong to type or instance. Although methods and functions are very similar, they differ in couple of ways. For now start with [functions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166), up to [Parameter Names](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166). 

  - What is function? How do we define function? Add an example.
  - Declare three functions with different number of arguments and return values.

Objective-C extensively uses external parameter names. Swift makes this feature easier to use and optional in some places. For now get accustomed to Swift [function parameter naming conventions](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166).

  - Describe Swift function parameter naming convenctions.
  - When and why do we use external names?
  - Show an example of default function argument.
  - What forms do arguments come in?

As said, Swift adopts parts of functional paradigm. As such, functions in Swift are, what's called, [First-class citizens](https://en.wikipedia.org/wiki/First-class_citizen). That means that functions have available all the operations generally available to other entities. Get familiar with [Function Types](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID174) in this chapter.  

  - What is function type? How do we use it? Show an example.


### Closures

Global and nested functions, as introduced in Functions, are actually special cases of closures, as are methods. Thirs type of closures are unnamed closure which are similar to lambdas in other programming languages. Carefully read thru [first section](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID94) and answer folowing questions.

  - What are closures?
  - When and why do we use them? Show somewhat compelxe example.
  - Demonstrate a couple of shorthand definitions.

Read thru the rest of the chapter taking special look at [Capturing Values](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID103).

  - What is trailing closure? Add an example.
  - How and why do we capture values? Add an example.

### Enumerations, Classes and Structures

Swift introduces a lot of new features to [Enumerations](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Enumerations.html#//apple_ref/doc/uid/TP40014097-CH12-ID145) and [Structures](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html#//apple_ref/doc/uid/TP40014097-CH13-ID82). Personally, I have not found a lot of use for these features so for now I would recommend quickly read thru them.

Pay more attention to classes. If you are somewhat familiar to object oriented programming you should not have many problems. 



## Advanced


## Finishing Touches
