This package is used to remove large numeric values from the value and add numeric extension to it like Million, Billion, etc.

The package supports Internation System and Indian System.

For using International system, follow the below snipit.

```dart
// This function returns String
String result = NumberExtension.internationSystem(100000);
//Result: 100 K
```

For using Indian system, follow the below snipit.

```dart
// This function returns String
String result = NumberExtension.indianSystem(100000);
//Result: 1 Lac
```

For controlling the points after value, use the following optional parameter:

```dart
String result = NumberExtension.internationSystem(1554400, numbersAfterPoint: 3);
```