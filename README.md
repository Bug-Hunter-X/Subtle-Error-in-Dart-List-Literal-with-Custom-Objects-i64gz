# Subtle Error in Dart List Literal with Custom Objects

This repository demonstrates a subtle error that can occur when using list literals to create lists of custom objects in Dart. The error arises if the constructor of the object being added to the list does not properly handle potential exceptions or null values.

## Problem Description
The code in `bug.dart` shows an example where a list of `MyClass` objects is created using a list literal. If the `MyClass` constructor doesn't handle potential errors correctly, adding elements to the list after creation using the `add` method can lead to unexpected behavior or exceptions. This is because the list literal uses the constructor implicitly, whereas the add method invokes the constructor explicitly. This difference can cause errors if the constructor isn't robust.

## Solution
The solution is to ensure that the constructor of `MyClass` handles potential errors gracefully, and handles potential null values or exceptions.
The `bugSolution.dart` file provides a corrected version of the `MyClass` class, handling potential errors in a more robust way. 

## How to run
1. Clone the repository.
2. Open the project in your favorite Dart IDE.
3. Run the `bug.dart` and `bugSolution.dart` files to see the problem and the solution in action. 
