# vCard Example

Demonstrates how to use the vCard package - a dart port of vCard JS by Eric J Nesser.

## Getting Started

For help getting started with this package from [readme documentation](https://pub.dev/packages/vcard).

## Basic Usage

``` dart
/// Import the package
import 'package:vcard/vcard.dart';

///Create a new vCard
var vCard = VCard();

///Set properties
vCard.firstName = 'FirstName';
vCard.middleName = 'MiddleName';
vCard.lastName = 'LastName';
vCard.organization = 'ActivSpaces Labs';
vCard.photo.attachFromUrl('/path/to/image/file.png', 'PNG');
vCard.workPhone = 'Work Phone Number';
vCard.birthday = DateTime.now();
vCard.title = 'Software Developer';
vCard.url = 'https://github.com/valerycolong';
vCard.note = 'Notes on contact';

/// Save to file
vCard.saveToFile('./contact.vcf');

/// Get as formatted string
print(vCard.getFormattedString());

```

### Embedding Images

You can embed images in the photo or logo field instead of linking to them from a URL using base64 encoding.

```dart
//can be Windows or Linux/Unix path structures, and JPEG, PNG, GIF formats
vCard.photo.embedFromFile('/path/to/file.png');
vCard.logo.embedFromFile('/path/to/file.png');
```

```dart
//can also embed images via base-64 encoded strings
vCard.photo.embedFromString('iVBORw0KGgoAAAANSUhEUgAAA2...', 'image/png');
vCard.logo.embedFromString('iVBORw0KGgoAAAANSUhEUgAAA2...', 'image/png');
```

### Date Reference

MDN reference on how to use the `Date` object for birthday and anniversary can be found at [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date).

