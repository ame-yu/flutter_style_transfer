CALL %1

:build
flutter build apk --no-sound-null-safety %1
EXIT /B 0

:build_runner
flutter pub run build_runner build
EXIT /B 0

:install
adb install build\app\outputs\apk\release\app-release.apk
EXIT /B 0