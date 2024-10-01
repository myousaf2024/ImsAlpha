import 'package:lms_alpha/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChooseLanguageViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  List<String> countryList = [
    "Afrikaans (Afrikaans)",
    "Arabic (العربية)",
    "French (Français)",
    "Afrikaans (Afrikaans)",
    "Chinese (普通话)",
    "Czech (Čeština)",
    "Danish (Dansk)",
    "Dutch (Nederlands)",
    "English (United Kingdom)",
    "English (United States)",
    "French (Français)",
    "German (Deutsch)",
    "Greek (Ελληνικά)",
    "Hindi",
    "Indonesian (Bahasa Indonesia)",
    "Italian (Italiano)",
    "Japanese (日本語)",
    "Korean (한국어)",
    "Malay (Bahasa Melayu)",
    "Norwegian (Norsk)",
    "(فارسی) Persian",
    "Portuguese (Português)",
    "Russian (Русский)",
    "Korean (한국어)",
    "Malay (Bahasa Melayu)",
    "Norwegian (Norsk)",
    "(فارسی) Persian",
    "Portuguese (Português)",
    "Russian (Русский)",
    "Spanish (Español)",
    "Thai (ไทย)",
    "Turkish (Türkçe)",
    "Urdu (اردو)",
    "Vietnamese (Tiếng Việt)",
  ];
}
