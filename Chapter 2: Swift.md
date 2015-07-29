  
  
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

## Advanced


## Finishing Touches
