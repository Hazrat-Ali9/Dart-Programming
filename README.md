# Hazrat Ali

# Dart Programming For Learning ( Basic Level )

# Object-Oriented Programming (OOP) in Dart

Object-oriented programming (OOP) is a programming paradigm that structures code using objects, which are instances of classes. Dart fully supports OOP principles, and this section provides a comprehensive exploration of key OOP concepts in Dart.

## Classes and Objects

In Dart, a class is a blueprint for creating objects. Objects are instances of classes and encapsulate data and behavior. Let's expand on the basic example:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  // Creating an instance of the Dog class
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  // Accessing properties
  print('Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.breed}');

  // Invoking methods
  myDog.makeSound();
  myDog.showDetails();
}
```

In this example, we have an `Animal` class with properties `name` and `age` and a method `makeSound`. The `Dog` class extends `Animal` and introduces an additional property `breed` and a method `showDetails`.

## Constructors

Constructors are special methods used for initializing objects. Dart supports both default and named constructors. Let's extend the previous example to include named constructors:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  Animal.namedConstructor(this.name) : age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
      : breed = breed,
        super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  var anotherDog = Dog.namedConstructor('Max', 'Labrador');

  myDog.showDetails();
  anotherDog.showDetails();
}
```

Here, we've added named constructors `namedConstructor` to both the `Animal` and `Dog` classes. This allows for alternative ways to construct objects.

## Inheritance

Inheritance is a fundamental OOP concept that allows a class to inherit properties and methods from another class. The `extends` keyword in Dart is used to implement inheritance. Let's extend our example further:

```dart
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  Animal.namedConstructor(this.name) : age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
      : breed = breed,
        super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

class Cat extends Animal {
  bool hasStripes;

  Cat(String name, int age, this.hasStripes) : super(name, age);

  void makeSound() {
    print('Cat meows');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Has Stripes: $hasStripes');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');
  var myCat = Cat('Whiskers', 2, true);

  myDog.showDetails();
  myCat.showDetails();
}
```

In this extension, we've introduced a new class `Cat` that also extends `Animal`. The `Cat` class has its own properties and methods, and it overrides the `makeSound` method inherited from `Animal`.

## Encapsulation

Encapsulation is the concept of bundling data and methods that operate on that data within a single unit, i.e., a class. Dart supports encapsulation through the use of access modifiers (`public`, `private`, and `protected`). Dart uses an underscore `_` as a convention for marking private members. Let's modify our example to incorporate encapsulation:

```dart
class Animal {
  String _name; // Private property
 

 int _age; // Private property

  Animal(this._name, this._age);

  Animal.namedConstructor(this._name) : _age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }

  // Getter for private property _name
  String get name => _name;

  // Setter for private property _name
  set name(String value) => _name = value;

  // Getter for private property _age
  int get age => _age;

  // Setter for private property _age
  set age(int value) => _age = value;
}

class Dog extends Animal {
  String _breed; // Private property

  Dog(String name, int age, this._breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
      : _breed = breed,
        super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $_breed');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');
  
  // Accessing private properties through getters
  print('Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.showDetails()}');
}
```

In this example, properties `_name`, `_age`, and `_breed` are marked as private using the underscore `_`. Getters and setters are then used to provide controlled access to these private properties.

## Abstraction

Abstraction involves hiding complex implementation details and showing only the necessary features of an object. Dart achieves abstraction through abstract classes and methods. Let's create an abstract class and extend it:

```dart
abstract class Shape {
  // Abstract method
  void draw();

  // Regular method
  void getInfo() {
    print('This is a shape.');
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius');
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  void draw() {
    print('Drawing a square with side $side');
  }
}

void main() {
  var myCircle = Circle(5.0);
  var mySquare = Square(4.0);

  myCircle.draw();
  myCircle.getInfo();

  mySquare.draw();
  mySquare.getInfo();
}
```

Here, `Shape` is an abstract class with an abstract method `draw()`. The `Circle` and `Square` classes extend `Shape` and provide their own implementations of the `draw()` method.

## Polymorphism

Polymorphism allows objects of different types to be treated as objects of a common type. Dart supports polymorphism through method overriding. Let's demonstrate polymorphism using our existing classes:

```dart
void main() {
  Shape myCircle = Circle(5.0);
  Shape mySquare = Square(4.0);

  drawShape(myCircle);
  drawShape(mySquare);
}

void drawShape(Shape shape) {
  shape.draw();
}
```

In this example, `myCircle` and `mySquare` are both treated as `Shape` objects when passed to the `drawShape` function. The `draw()` method of the appropriate class (either `Circle` or `Square`) is called based on the actual type of the object.


## Conclusion

This comprehensive exploration covers the fundamental concepts of Object-Oriented Programming (OOP) in Dart. Understanding these concepts, including classes, inheritance, constructors, encapsulation, abstraction, and polymorphism, is crucial for writing efficient and maintainable Dart code. For more in-depth information and advanced use cases, refer to the official Dart documentation: [Dart Documentation](https://dart.dev/guides).

# Extensions in Dart

Dart introduced extensions as a feature that allows adding new functionality to existing classes without modifying their source code. This provides a way to extend the behavior of types you don't own or cannot modify. Let's explore the concept of extensions in Dart and how to implement them.

## Extension Declaration

To declare an extension, you use the `extension` keyword followed by a name and the `on` keyword specifying the type you want to extend. Inside the extension, you can define new methods, getters, setters, and fields:

```dart
extension StringExtension on String {
  int parseInt() {
    return int.parse(this);
  }

  String capitalize() {
    return this.isNotEmpty ? this[0].toUpperCase() + this.substring(1) : this;
  }
}
```

In this example, we declare an extension named `StringExtension` that extends the `String` class. It provides two new methods: `parseInt` to parse a string into an integer and `capitalize` to capitalize the first letter of the string.

## Using Extensions

Once an extension is declared, you can use its methods as if they were defined directly on the extended type. Here's how you use the `StringExtension` extension:

```dart
void main() {
  String numberString = '42';
  int number = numberString.parseInt();

  print('Parsed number: $number');

  String greeting = 'hello';
  String capitalizedGreeting = greeting.capitalize();

  print('Capitalized greeting: $capitalizedGreeting');
}
```

In this example, the `parseInt` method from the `StringExtension` extension is used to parse a string into an integer, and the `capitalize` method is used to capitalize the first letter of a string.


## Limitations

- Extensions can only be declared on non-nullable types.
- They cannot access private members of the extended type.
- Extensions are not inherited, meaning if a subclass extends a class, it won't automatically inherit the extensions of the superclass.

## Advanced Usage

Extensions can be used to add functionality to third-party or system libraries without modifying their source code. For example, you could create an extension to add extra methods to the `List` class:

```dart
extension ListExtension<E> on List<E> {
  E safeGet(int index) {
    return (index >= 0 && index < this.length) ? this[index] : null;
  }

  void printAll() {
    this.forEach(print);
  }
}
```

Now, you can use these methods on any list:

```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  int element = numbers.safeGet(2);
  print('Element at index 2: $element');

  numbers.printAll();
}
```

This is a powerful feature for enhancing existing types and promoting code reuse.

## Conclusion

Extensions in Dart provide a clean and efficient way to add new functionality to existing types. They improve code readability and maintainability by allowing you to extend classes without modifying their source code. When used carefully, extensions can be a valuable tool for writing concise and expressive Dart code. For more in-depth information and advanced use cases, refer to the official Dart documentation on [extensions](https://dart.dev/guides/language/extension-methods).

# Mixins

Mixins in Dart are a way to reuse a class's code in multiple class hierarchies. They allow you to extend the functionality of a class without using traditional inheritance. Mixins are a powerful feature in Dart that promotes code reuse and separation of concerns. Here's a step-by-step guide to understanding and using mixins in Dart:


### 1. **Define a Mixin:**

Create a mixin by using the `mixin` keyword followed by a name. A mixin can include methods, properties, and even other mixins.

```dart
mixin LoggingMixin {
  void log(String message) {
    print('Log: $message');
  }
}
```

In this example, `LoggingMixin` defines a simple `log` method.

### 2. **Use Mixin in a Class:**

To use a mixin in a class, use the `with` keyword followed by the mixin's name.

```dart
class Calculator with LoggingMixin {
  int add(int a, int b) {
    log('Adding $a and $b');
    return a + b;
  }
}
```

Now, the `Calculator` class can use the `log` method from the `LoggingMixin`.


### 3. **Instantiate and Use the Class:**

Create an instance of the class and use its methods as usual.

```dart
void main() {
  var calculator = Calculator();
  var result = calculator.add(3, 7);
  print('Result: $result');
}
```

The `Calculator` class now benefits from the `log` method provided by the `LoggingMixin`.

### 4. **Multiple Mixins:**

You can use multiple mixins in a single class by separating them with commas.

```dart
mixin MathOperations {
  int multiply(int a, int b) => a * b;
}

class AdvancedCalculator with LoggingMixin, MathOperations {
  //...
}
```

Now, `AdvancedCalculator` has access to both the `log` method from `LoggingMixin` and the `multiply` method from `MathOperations`.


### 5. **Order of Mixins:**

The order in which mixins are applied matters. The behavior of the class may vary based on the order of mixins. If two mixins provide the same method or property, the one declared first takes precedence.


