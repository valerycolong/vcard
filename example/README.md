# vCard Example

Demonstrates how to use the vCard package - a dart port of vCard JS by Eric J Nesser.

## Getting Started

For help getting started with this package from [readme documentation](https://pub.dev/packages/vcard).

## Basic Usage

Below is a simple example of how to create a basic vCard and how to save it to a file, or view its contents from the console.

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

### Complete Example

The following shows a vCard with everything filled out.

```dart
///import the package
import 'package:vcard/vcard.dart';

//create a new vCard
var vCard = VCard();

///set basic properties shown before
vCard.firstName = 'FirstName';
vCard.middleName = 'MiddleName';
vCard.lastName = 'Last Name';
vCard.uid = '6yuuhuhj-c34d-4a1e-8922-bd38a9476a53';
vCard.organization = 'ActivSpaces Labs';

///link to image
vCard.photo.attachFromUrl('/path/to/image/file.png', 'JPEG');

///or embed image
vCard.photo.attachFromUrl('/path/to/image/file.png');

vCard.workPhone = '312-555-1212';
vCard.birthday = DateTime.now();
vCard.title = 'Software Developer';
vCard.url = 'https://github.com/valerycolong';
vCard.workUrl = 'https://activspaces.com';
vCard.note = 'Notes on contact';

///set other vitals
vCard.nickname = 'Scarface';
vCard.namePrefix = 'Mr.';
vCard.nameSuffix = 'JR';
vCard.gender = 'M';
vCard.anniversary = DateTime.now();
vCard.role = 'Software Development';

///set other phone numbers
vCard.homePhone = 'Home Phone';
vCard.cellPhone = 'Cell Phone';
vCard.pagerPhone = 'Pager Phone';

///set fax/facsimile numbers
vCard.homeFax = 'Home Fax';
vCard.workFax = 'Work Fax';

///set email addresses
vCard.email = 'labs@activspaces.com';
vCard.workEmail = 'hello@activspaces.com';

///set logo of organization or personal logo (also supports embedding, see above)
vCard.logo.attachFromUrl('https://www.activspaces.com/wp-content/uploads/2019/01/ActivSpaces-Logo_Dark.png', 'PNG');

///set URL where the vCard can be found
vCard.source = 'http://example.com/myvcard.vcf';

///set address information
vCard.homeAddress.label = 'Home Address';
vCard.homeAddress.street = 'Great Soppo';
vCard.homeAddress.city = 'Buea';
vCard.homeAddress.stateProvince = 'SW';
vCard.homeAddress.postalCode = '00237';
vCard.homeAddress.countryRegion = 'Cameroon';
vCard.homeAddress.type = 'HOME';

vCard.workAddress.label = 'Work Address';
vCard.workAddress.street = 'Molyko';
vCard.workAddress.city = 'Buea';
vCard.workAddress.stateProvince = 'SW';
vCard.workAddress.postalCode = '00237';
vCard.workAddress.countryRegion = 'Cameroon';
vCard.workAddress.type = 'WORK';

///set social media URLs
vCard.socialUrls['facebook'] = 'https://...';
vCard.socialUrls['linkedIn'] = 'https://...';
vCard.socialUrls['twitter'] = 'https://...';
vCard.socialUrls['flickr'] = 'https://...';
vCard.socialUrls['custom'] = 'https://...';

///you can also embed photos from files instead of attaching via URL
vCard.photo.embedFromFile('photo.jpg');
vCard.logo.embedFromFile('logo.jpg');

vCard.version = '3.0'; //can also support 2.1 and 4.0, certain versions only support certain fields

///save to file
vCard.saveToFile('./contact/file.vcf');

///get as formatted string
print(vCard.getFormattedString());
```

### Multiple Email, Fax, & Phone Examples

`email`, `otherEmail`, `cellPhone`, `pagerPhone`, `homePhone`, `workPhone`, `homeFax`, `workFax`, `otherPhone` all support multiple entries in an array format.

Examples are provided below:

```dart

///import the package
import 'package:vcard/vcard.dart';


//create a new vCard
var vCard = VCard();

///multiple email entry
vCard.email = [
    'e.nesser@emailhost.tld',
    'e.nesser@emailhost2.tld',
    'e.nesser@emailhost3.tld'
];

///multiple cellphone
vCard.cellPhone = [
    '312-555-1414',
    '312-555-1415',
    '312-555-1416'
];

```

### Apple AddressBook Extensions

You can mark as a contact as an organization with the following Apple AddressBook extension property:

```dart
    var vCard = VCard();
    vCard.isOrganization = true;
```