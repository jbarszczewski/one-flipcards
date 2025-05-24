///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsPl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations
	@override String get appTitle => 'Bloc Template (pl)';
	@override late final _TranslationsNavigationPl navigation = _TranslationsNavigationPl._(_root);
	@override late final _TranslationsItemsListPl itemsList = _TranslationsItemsListPl._(_root);
	@override late final _TranslationsItemDetailsPl itemDetails = _TranslationsItemDetailsPl._(_root);
	@override late final _TranslationsSettingsPl settings = _TranslationsSettingsPl._(_root);
}

// Path: navigation
class _TranslationsNavigationPl implements TranslationsNavigationEn {
	_TranslationsNavigationPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get home => 'Strona glowna';
	@override String get settings => 'Ustawienia';
}

// Path: itemsList
class _TranslationsItemsListPl implements TranslationsItemsListEn {
	_TranslationsItemsListPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pozycje';
	@override String get sampleItemTitle => 'Przykladowa pozycja {itemId}';
	@override String get refreshButton => 'Odswiez';
}

// Path: itemDetails
class _TranslationsItemDetailsPl implements TranslationsItemDetailsEn {
	_TranslationsItemDetailsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szczegoly';
	@override String get detailsPlaceholder => 'Szczegoly pozycji {itemId}';
	@override String get deleteButton => 'Usun to';
}

// Path: settings
class _TranslationsSettingsPl implements TranslationsSettingsEn {
	_TranslationsSettingsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustawienia';
	@override late final _TranslationsSettingsThemesPl themes = _TranslationsSettingsThemesPl._(_root);
}

// Path: settings.themes
class _TranslationsSettingsThemesPl implements TranslationsSettingsThemesEn {
	_TranslationsSettingsThemesPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wybierz motyw';
	@override late final _TranslationsSettingsThemesOptionsPl options = _TranslationsSettingsThemesOptionsPl._(_root);
}

// Path: settings.themes.options
class _TranslationsSettingsThemesOptionsPl implements TranslationsSettingsThemesOptionsEn {
	_TranslationsSettingsThemesOptionsPl._(this._root);

	final TranslationsPl _root; // ignore: unused_field

	// Translations
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get system => 'Systemowy';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'Bloc Template (pl)';
			case 'navigation.home': return 'Strona glowna';
			case 'navigation.settings': return 'Ustawienia';
			case 'itemsList.title': return 'Pozycje';
			case 'itemsList.sampleItemTitle': return 'Przykladowa pozycja {itemId}';
			case 'itemsList.refreshButton': return 'Odswiez';
			case 'itemDetails.title': return 'Szczegoly';
			case 'itemDetails.detailsPlaceholder': return 'Szczegoly pozycji {itemId}';
			case 'itemDetails.deleteButton': return 'Usun to';
			case 'settings.title': return 'Ustawienia';
			case 'settings.themes.title': return 'Wybierz motyw';
			case 'settings.themes.options.light': return 'Jasny';
			case 'settings.themes.options.dark': return 'Ciemny';
			case 'settings.themes.options.system': return 'Systemowy';
			default: return null;
		}
	}
}

