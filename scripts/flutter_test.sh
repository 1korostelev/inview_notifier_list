cd $1
flutter packages get
flutter format --set-exit-if-changed --line-length 120 lib test
flutter analyze --no-current-package lib test/
flutter test --no-pub --coverage
# resets to the original state
cd -