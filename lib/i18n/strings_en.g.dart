///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	Map<String, String> get locales => {
		'en': '🇬🇧 English (UK)',
		'pl': '🇵🇱 Polski',
	};
	String get appTitle => 'Bloc Template';
	late final TranslationsNavigationEn navigation = TranslationsNavigationEn._(_root);
	late final TranslationsItemsListEn itemsList = TranslationsItemsListEn._(_root);
	late final TranslationsItemDetailsEn itemDetails = TranslationsItemDetailsEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
}

// Path: navigation
class TranslationsNavigationEn {
	TranslationsNavigationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get settings => 'Settings';
}

// Path: itemsList
class TranslationsItemsListEn {
	TranslationsItemsListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Items';
	String get sampleItemTitle => 'Sample item {itemId}';
	String get refreshButton => 'Refresh list';
}

// Path: itemDetails
class TranslationsItemDetailsEn {
	TranslationsItemDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Item details';
	String get detailsPlaceholder => 'Details for item {itemId}';
	String get deleteButton => 'Delete this';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final TranslationsSettingsThemesEn themes = TranslationsSettingsThemesEn._(_root);
}

// Path: settings.themes
class TranslationsSettingsThemesEn {
	TranslationsSettingsThemesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select a theme';
	late final TranslationsSettingsThemesOptionsEn options = TranslationsSettingsThemesOptionsEn._(_root);
}

// Path: settings.themes.options
class TranslationsSettingsThemesOptionsEn {
	TranslationsSettingsThemesOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get light => 'Light';
	String get dark => 'Dark';
	String get system => 'System';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'locales.en': return '🇬🇧 English (UK)';
			case 'locales.pl': return '🇵🇱 Polski';
			case 'appTitle': return 'Bloc Template';
			case 'navigation.home': return 'Home';
			case 'navigation.settings': return 'Settings';
			case 'itemsList.title': return 'Items';
			case 'itemsList.sampleItemTitle': return 'Sample item {itemId}';
			case 'itemsList.refreshButton': return 'Refresh list';
			case 'itemDetails.title': return 'Item details';
			case 'itemDetails.detailsPlaceholder': return 'Details for item {itemId}';
			case 'itemDetails.deleteButton': return 'Delete this';
			case 'settings.title': return 'Settings';
			case 'settings.themes.title': return 'Select a theme';
			case 'settings.themes.options.light': return 'Light';
			case 'settings.themes.options.dark': return 'Dark';
			case 'settings.themes.options.system': return 'System';
			default: return null;
		}
	}
}

