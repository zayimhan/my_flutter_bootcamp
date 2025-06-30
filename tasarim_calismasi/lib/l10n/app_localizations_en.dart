// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get pizzaBaslik => 'Beef Cheese';

  @override
  String get peynirYazi => 'cheese';

  @override
  String get sucukYazi => 'sausage';

  @override
  String get zeytinYazi => 'olive';

  @override
  String get biberYazi => 'pepper';

  @override
  String get teslimatSure => '20 min';

  @override
  String get teslimatBaslik => 'delivery';

  @override
  String get pizzaAciklama => 'meet lover, get ready to meet your pizza !';

  @override
  String get fiyat => '\$ 5.98';

  @override
  String get buttonYazi => 'add to cart';
}
