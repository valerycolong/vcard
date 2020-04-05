import 'package:flutter_test/flutter_test.dart';

import 'package:vcard/vcard.dart';

void main() {
  test('prints formated vcard string', () {
    final vcard = VCard();
    vcard.jobTitle = 'Dr';
    vcard.firstName = 'Colong';
    vcard.middleName = 'Valery';
    vcard.lastName = 'Nyiwung';
    vcard.homeAddress.street = 'Auberge';
    vcard.homeAddress.city = 'Buea';
    vcard.homeAddress.stateProvince = 'SW';
    vcard.homeAddress.countryRegion = 'Cameroon';
    //print(vcard.getFormattedString());
    expect(vcard.getFormattedString() is String, true);
    expect(vcard.getFormattedString().contains(RegExp(r'BEGIN:VCARD')), true);
  });
}
