
This article continues on [this](https://github.com/Rep2/in2iOSPlayground/blob/master/Documenting%20Swift%20code.md)
In this article you can learn how to generate documentations based on your comments in the code.
#Documenting code in swift
For documenting swift file there are a couple of ways out there. But at the time of writing this article only one tool could auto-generate documentation in for of a web site for your project. And that tool is [jazzy](https://github.com/realm/jazzy). Swift is a relative new language and there are no strict ways how to document code. Some good guidelines can be found [here](http://nshipster.com/swift-documentation/).

#Jazzy
##Installing
To instal jazzy you have to open the termina and write inside it "sudo gem install jazzy". After that jazzy will install itself.

##Running
To generate the documantation, you have to positionate the terminal inside the directory of your project for which you want to generate the documantation. After that, you write in the terminal "jazzy" and that's it. If it is not specified the generated web page will be inside a new directory called "docs" , inside you'r project.

##Options
  - The user can pass a specific path for the outgoing directory while runing. To do that he has to write the option "-o path" , in which the "path" stands for the actual path of the wanted directory.

  - By default jazzy only generates documentation for classes , functions and variables that are declared as public. If you want to change that you have to do it with the following option. " --min-acl=public/internal/private". Ofcourse you do not write all of them (public/internal/private), you write only the one you want. If you write for example internal, jazzy will generate for all the internal and public classes, methods and variables he can find.
  - for other options jazzy has , write "jazzy -h" , and you will see all of his options.

##Comment structure
For jazzy to work , you comment's must have a specific structure. Comments can start with "///" if they are single line comments or '/\*\*' if they are multy line comments, in the second case the scope is closed with '\*/'. 
 
  - The first line marks the short description of the class/method/variable
  - With the keyword ":param: p description" you mark that there is a parameter "p" for that method, the description marks the actual desctiption for it.
  - With the keyword ":returns: description" you describe what the method returns.
  - Another usefull keyword is ":see: reference" by which you can referense other documents inside your coments"

Example of documenting in swift for jazzy:

/\*\*<#Short inline description - what it is doing#>

<#Description#>

:param: <#paramName#> <#Description#>.

:returns: <#dataType#> <#Description#>.

\*/
