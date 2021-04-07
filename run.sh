eval $1

build(){
	flutter build apk --no-sound-null-safety %1
}

build_runner(){
	flutter pub run build_runner build
}

install(){
	adb install build\app\outputs\apk\release\app-release.apk
}


