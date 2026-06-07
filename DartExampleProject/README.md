# Dart Example Project

A simple Flutter application for learning Dart and Flutter basics.

## What's Included

- **Blank Window**: A clean Material Design app with an app bar
- **Text Box**: A text input field where you can type
- **Live Display**: Shows what you're typing in real-time

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed
- An IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Install dependencies:
```bash
flutter pub get
```

2. Run the app on an emulator or device:
```bash
flutter run
```

## Project Structure

```
lib/
  main.dart          # Entry point with the app UI
pubspec.yaml        # Project configuration and dependencies
```

## Learning Points

- **StatelessWidget**: Used for `MyApp` (immutable UI)
- **StatefulWidget**: Used for `MyHomePage` (mutable state)
- **State Management**: Uses `setState()` to update UI when text changes
- **Text Input**: `TextField` widget with `TextEditingController`
- **Layout**: `Scaffold`, `Column`, `Center`, and `Padding` for structure
- **Theming**: Basic Material Design theme with color customization

## Key Concepts

1. **Widgets**: Everything in Flutter is a widget (UI components)
2. **Hot Reload**: Press 'r' in the terminal to instantly reload changes
3. **setState()**: Triggers UI rebuild when state changes
4. **Controllers**: `TextEditingController` manages text input
5. **Disposal**: Always clean up resources in `dispose()`

## Next Steps

Try modifying:
- Change the app colors in the theme
- Add more input fields
- Save the text to local storage
- Add buttons with different actions
