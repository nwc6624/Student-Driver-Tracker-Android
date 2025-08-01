# Student Driver Tracker 🚗

A comprehensive Flutter application designed to help parents and instructors track supervised driving sessions for teen drivers. The app features a beautiful southwestern-themed interface with light/dark mode support, allowing users to create driver profiles, log driving sessions with detailed information, monitor progress toward required hours, and export driving logs as PDF reports.

## 🌟 Features

### Driver Management

- **Create Driver Profiles**: Add new student drivers with name, age, and required hours
- **Driver Details**: Store comprehensive information including notes and goals
- **Edit Profiles**: Update driver information as needed
- **Multiple Drivers**: Support for tracking multiple student drivers

### Driving Session Tracking
- **Session Logging**: Record detailed driving sessions with duration, date, and location
- **Weather Conditions**: Track weather conditions during each session
- **Session Notes**: Add custom notes for each driving session
- **Progress Monitoring**: Visual progress tracking toward required hours
- **Session History**: Complete history of all driving sessions per driver


### Data Management
- **Local Storage**: Secure local data storage using Hive database
- **Data Persistence**: All data is saved locally on the device
- **Export Functionality**: Generate and export PDF reports of driving logs
- **Data Backup**: Easy sharing and backup of driving records

### User Interface
- **Southwestern Theme**: Beautiful southwestern-inspired design
- **Light/Dark Mode**: Toggle between light and dark themes
- **Responsive Design**: Optimized for various screen sizes
- **Background Images**: Dynamic background images that change with theme
- **Intuitive Navigation**: Easy-to-use interface for all age groups

### Additional Features
- **PDF Generation**: Create detailed PDF reports of driving sessions
- **Location Services**: Integration with device location services
- **File Management**: Save and share PDF reports
- **Permission Handling**: Proper handling of device permissions

## 📱 Screenshots

*[Screenshots would be added here showing the app interface]*

## 🛠️ Technical Stack

### Core Technologies
- **Framework**: Flutter 3.7.2+
- **Language**: Dart
- **State Management**: Provider + Riverpod
- **Database**: Hive (NoSQL local database)
- **PDF Generation**: pdf package
- **Location Services**: geolocator package

### Key Dependencies
```yaml
# UI and State Management
provider: ^6.1.1
flutter_riverpod: ^2.4.9

# Data Persistence
hive: ^2.2.3
hive_flutter: ^1.1.0

# PDF Generation
pdf: ^3.10.11

# Location Services
geolocator: ^14.0.1

# File Management
path_provider: ^2.1.1
open_file: ^3.3.2
permission_handler: ^12.0.0+1

# Utilities
intl: ^0.20.2
uuid: ^4.5.1
shared_preferences: ^2.2.2
flutter_form_builder: ^10.0.1
share_plus: ^11.0.0
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.7.2 or higher
- Dart SDK
- Android Studio / VS Code
- Android SDK (for Android development)
- Xcode (for iOS development, macOS only)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/student_driver_tracker.git
   cd student_driver_tracker
   ```

2. **Navigate to the project directory**
   ```bash
   cd student_driver_tracker_new
   ```

3. **Install dependencies**
   ```bash
   flutter pub get
   ```

4. **Generate Hive adapters**
   ```bash
   flutter packages pub run build_runner build
   ```

5. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

#### Android
```bash
flutter build apk --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## 📁 Project Structure

```
lib/
├── main.dart                 # Application entry point
├── models/                   # Data models
│   ├── driver.dart          # Driver model with Hive annotations
│   └── driving_session.dart # Driving session model
├── providers/               # State management
│   ├── theme_provider.dart  # Theme state management
│   └── background_provider.dart # Background image management
├── screens/                 # Application screens
│   ├── splash_screen.dart   # App splash screen
│   ├── create_driver_screen.dart # Create new driver
│   ├── driver_profile_screen.dart # Driver profile view
│   ├── add_session_screen.dart # Add driving session
│   ├── edit_driver_screen.dart # Edit driver information
│   ├── export_screen.dart   # Export PDF reports
│   └── about_screen.dart    # About app information
├── utils/                   # Utility functions
│   ├── pdf_generator.dart   # PDF generation logic
│   └── permission_handler.dart # Permission handling
└── widgets/                 # Reusable widgets
    └── background_widget.dart # Background image widget
```

## 🔧 Configuration

### Android Permissions
The app requires the following permissions (configured in `android/app/src/main/AndroidManifest.xml`):
- `ACCESS_FINE_LOCATION`: For location services
- `ACCESS_COARSE_LOCATION`: For approximate location
- `WRITE_EXTERNAL_STORAGE`: For saving PDF files
- `READ_EXTERNAL_STORAGE`: For reading saved files

### iOS Permissions
For iOS, add the following to `ios/Runner/Info.plist`:
```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs location access to record driving session locations.</string>
```

## 📊 Data Models

### Driver Model
```dart
class Driver {
  final String id;
  final String name;
  final int? age;
  final double? totalHoursRequired;
  final String? notes;
  final DateTime createdAt;
  final bool goalCompletedShown;
}
```

### Driving Session Model
```dart
class DrivingSession {
  final String id;
  final String driverId;
  final int durationMinutes;
  final DateTime date;
  final String location;
  final String? notes;
  final String? weatherConditions;
}
```

## 🎨 Theme Configuration

The app uses a southwestern color scheme:
- **Primary Color**: `#D2691E` (Chocolate Orange)
- **Secondary Color**: `#8B4513` (Saddle Brown)
- **Dark Theme**: `#654321` (Dark Brown)

## 📱 Usage Guide

### Creating a Driver Profile
1. Launch the app
2. Tap "Create New Driver"
3. Enter driver information:
   - Name (required)
   - Age (optional)
   - Required hours (optional)
   - Notes (optional)
4. Tap "Create Driver"

### Adding a Driving Session
1. Select a driver from the home screen
2. Tap "Add Session"
3. Fill in session details:
   - Duration (in minutes)
   - Date and time
   - Location
   - Weather conditions (optional)
   - Notes (optional)
4. Tap "Save Session"

### Exporting Reports
1. Select a driver from the home screen
2. Tap "Export" button
3. Choose export options
4. Generate and save PDF report

### Switching Themes
- Tap the theme toggle icon in the app bar
- Choose between light and dark modes

## 🔒 Privacy & Security

- **Local Storage**: All data is stored locally on the device
- **No Cloud Sync**: No data is transmitted to external servers
- **Permission-Based**: Location access is optional and user-controlled
- **Data Ownership**: Users have complete control over their data

## 🐛 Troubleshooting

### Common Issues

1. **Build Runner Errors**
   ```bash
   flutter clean
   flutter pub get
   flutter packages pub run build_runner build --delete-conflicting-outputs
   ```

2. **Permission Issues**
   - Ensure all required permissions are granted in device settings
   - For Android: Check app permissions in Settings > Apps > Student Driver Tracker
   - For iOS: Check permissions in Settings > Privacy & Security

3. **PDF Generation Issues**
   - Ensure sufficient storage space
   - Check file write permissions
   - Verify PDF viewer app is installed

### Debug Mode
```bash
flutter run --debug
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Development Guidelines
- Follow Dart/Flutter best practices
- Add comments for complex logic
- Test on multiple devices
- Ensure accessibility compliance
- Update documentation for new features

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Hive team for the local database solution
- All contributors and beta testers
- The open-source community for the packages used

## 📞 Support

For support, please open an issue on GitHub or contact the development team.

## 🔄 Version History

- **v1.0.0+2** - Initial release with core functionality
  - Driver profile management
  - Driving session tracking
  - PDF export functionality
  - Light/dark theme support
  - Southwestern UI design

---

**Note**: This application is designed for educational purposes and should be used in accordance with local driving laws and regulations. Always ensure compliance with your jurisdiction's requirements for supervised driving practice. 
