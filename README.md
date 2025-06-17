# Ahavat Yeshua iOS App

[![iOS starter workflow](https://github.com/ilia-pavlov/Ahavat-Yeshua/actions/workflows/ios.yml/badge.svg)](https://github.com/ilia-pavlov/Ahavat-Yeshua/actions/workflows/ios.yml)

## Overview

Ahavat Yeshua is an iOS application designed to provide spiritual content and resources for users. The app offers a modern and user-friendly interface for accessing religious content, teachings, and community features.

## Features

- Modern and intuitive user interface
- Spiritual content browsing and reading
- Community features and interactions
- Offline content access
- Customizable reading preferences

## UI Testing

### Finding UI Tests
UI tests are located in the `AhavatYeshuaUITests` directory within the project. The tests are organized into different test classes, each focusing on specific app features.

### Running UI Tests
You can run UI tests using Xcode:

1. Open the project in Xcode
2. Select the test scheme (AhavatYeshuaUITests)
3. Choose your desired simulator or device
4. Run the tests using either:
   - The "Test" button in the toolbar
   - Command + U keyboard shortcut
   - Or by selecting Product > Test from the menu

### Test Organization
The UI tests are organized by feature areas, making it easy to find and run specific test cases. Each test class follows the naming convention `FeatureNameUITests` for easy identification.

## Project Structure

The project follows a modular architecture with clear separation of concerns:

- `Sources`: Main application code
- `Tests`: Unit tests
- `UITests`: UI tests
- `Resources`: App assets and resources

## Requirements

- Xcode 15.0 or later
- iOS 16.0 or later
- Swift 5.9 or later

## Contributing

Please read CONTRIBUTING.md for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
