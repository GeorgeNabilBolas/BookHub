import 'dart:io';

void main(List<String> inputs) {
  validateInputs(inputs);
  final screenName = inputs.join('_').toLowerCase();
  print('\n🛠️  Creating structure for screen: $screenName');
  final basePath = 'lib/';
  print('\n📂 Creating folders for "$screenName" in "$basePath"\n');
  generateFolders(basePath, screenName);
  print('\n📄 Creating files for "$screenName" in "$basePath"\n');
  generateFiles(basePath, screenName);
  print('\n🎉 Done setting up "$screenName" structure!\n');
}

void validateInputs(List<String> inputs) {
  if (inputs.isEmpty) {
    print(
      '❌ Please provide a screen name.\nUsage: dart generate_screen_structure.dart <screen_name>',
    );
    return;
  }
}

void generateFiles(String basePath, String screenName) {
  final files = [
    '$basePath/Core/Constants/app_colors.dart',
    '$basePath/Core/Constants/app_text_styles.dart',
    '$basePath/Core/Constants/app_paddings.dart',
    '$basePath/Core/Constants/app_strings.dart',
    '$basePath/Core/Constants/app_assets.dart',
    '$basePath/Core/Constants/app_border_radius.dart',
    '$basePath/Core/Constants/app_durations.dart',
    '$basePath/Core/theme/app_theme.dart',
    '$basePath/Features/$screenName/presentation/view/${screenName}_view.dart',
  ];
  for (var file in files) {
    final filePath = File(file);
    if (!filePath.existsSync()) {
      filePath.createSync(recursive: true);
      print('✅ Created: ${filePath.path}');
    } else {
      print('⚠️ Already exists: ${filePath.path}');
    }
  }
}

void generateFolders(String basePath, String screenName) {
  final folders = [
    '$basePath/Core/utils',
    '$basePath/Core/Services',
    '$basePath/Core/Constants/',
    '$basePath/Core/theme/',
    '$basePath/Core/routes/',
    '$basePath/Features/$screenName/data/models',
    '$basePath/Features/$screenName/data/repo',
    '$basePath/Features/$screenName/presentation/cubit',
    '$basePath/Features/$screenName/presentation/view/widgets',
  ];

  for (var folder in folders) {
    final dir = Directory(folder);
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
      print('✅ Created: ${dir.path}');
    } else {
      print('⚠️ Already exists: ${dir.path}');
    }
  }
}



//Here is the structure that will be created:
/*
lib/
├── Core/
│   ├── Constants/
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   ├── app_dimensions.dart
│   │   └── app_strings.dart
│   ├── Services/
│   ├── theme/
│   │   └── app_theme.dart
│   └── utils/
├── Features/
│   └── <screen_name>/
│       ├── data/
│       │   ├── models/
│       │   └── repo/
│       └── presentation/
│           ├── cubit/
│           └── view/
│               └── widgets/
└── main.dart
*/  