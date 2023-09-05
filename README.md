# GitChat

Implementation of a simple chat app using GitHub followers API.

Xcode project is setup to run SwiftGen and SwiftLint on every build to ensure consistent assets reference and ensure a uniform code style.

Colors are managed also by SwiftGen, to allow modifying app theme easily instead of using hardcoded colors.

The app use localization and separates user facing strings from UI. Added localizations are English, Japanese and Arabic (for checking mirrored UI).

# Todos:

- Image assets are not curently used as the background images for your messages UI. instead `RoundedRectangle` is used
- Introduce logging mechanism instead of using `print(_:)` statements.
