# FlutterApp-Aurora
Flutter Project Structure for default app.

```bash
lib
├── main.dart
├── services
│   ├── localization
│   │   ├── arb
│   │   │   ├── app_bn.arb
│   │   │   └── app_en.arb
│   │   ├── extention
│   │   │   └── locale_extention.dart
│   │   └── providers
│   │       ├── localization_provider.dart
│   │       └── localization_provider.g.dart
│   ├── riverpod
│   │   ├── extention
│   │   │   └── riverpod_extention.dart
│   │   ├── helper
│   │   │   └── provider_helper.dart
│   │   └── riverpod.dart
│   ├── routers
│   │   ├── app_router.dart
│   │   ├── app_router.g.dart
│   │   ├── router_provider.dart
│   │   └── router_provider.g.dart
│   └── themes
│       ├── helpers
│       │   ├── dark_mode
│       │   │   ├── dark_mode_helper.dart
│       │   │   └── dark_mode_helper.g.dart
│       │   └── light_mode
│       │       ├── light_mode_helper.dart
│       │       └── light_mode_helper.g.dart
│       └── providers
│           ├── color_scheme_seed_provider.dart
│           ├── color_scheme_seed_provider.g.dart
│           ├── font_provider.dart
│           ├── font_provider.g.dart
│           ├── theme_mode_provider.dart
│           ├── theme_mode_provider.g.dart
│           ├── themes_provider.dart
│           └── themes_provider.g.dart
└── src
    ├── global
    │   ├── extention
    │   │   └── extention.dart
    │   ├── global.dart
    │   ├── helper
    │   ├── package
    │   │   └── packages.dart
    │   └── widgets
    ├── pages
    │   ├── error
    │   │   ├── error_page.dart
    │   │   ├── sections
    │   │   └── widgets
    │   ├── home
    │   │   ├── home_page.dart
    │   │   ├── providers
    │   │   │   ├── home_provider.dart
    │   │   │   └── home_provider.g.dart
    │   │   ├── sections
    │   │   │   └── documentation_section.dart
    │   │   └── widgets
    │   │       └── my_image_w.dart
    │   ├── loading
    │   └── settings
    │       ├── providers
    │       │   ├── settings_provider.dart
    │       │   └── settings_provider.g.dart
    │       ├── sections
    │       │   ├── app_color_section.dart
    │       │   ├── font_section.dart
    │       │   └── language_section.dart
    │       ├── settings_page.dart
    │       └── widgets
    │           └── theme_toggle_widget.dart
    └── services
        ├── README.md
        └── service_name
            ├── constants
            ├── models
            ├── providers
            └── typedefs

40 directories, 42 files
```
