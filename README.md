# Lodart

![pub package](https://img.shields.io/pub/v/lodart.svg?logo=dart&logoColor=00b9fc)
![Test workflow](https://github.com/KiritaniAyaka/lodart/actions/workflows/dart.yaml/badge.svg?branch=main)
![Code coverage](https://codecov.io/gh/KiritaniAyaka/lodart/graph/badge.svg)
![Code size](https://img.shields.io/github/languages/code-size/KiritaniAyaka/lodart?logo=github&logoColor=white)

Lodart is a Dart utility library like lodash.

The goal of lodart is NOT to implement all methods in lodash because of the difference between Dart and JavaScript.
Lodart aims to implement utilities to make Dart easier to use and keep similar naming styles to lodash.

## Installation

Run `dart pub add lodart` in your dart project or `flutter pub add lodart` in flutter project.

## Features

Lodart provides some utilities like lodash includes `List`(`Arrary` in JavaScript) and etc.

## Methods

Here are all the methods included in lodart.
For details, please check [API reference](https://pub.dev/documentation/lodart/latest/).

### Collection

- `unique`
- `uniqueBy`
- `max`
- `maxBy`
- `groupBy`
- `dropNull`
- `splice`
- `toRemoved`
- `toRemovedAt`
- `toAdded`
- `toSpliced`

### Number

- `inRange`

## Usage

Import the lodart library and then you can use these extension methods in your project.

See the specific example of every function in the Dart generated documentation.

```dart
import 'package:lodart/lodart.dart';
```
