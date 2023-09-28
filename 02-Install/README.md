# Installation on MacOS (Apple Silicon)

Check the installation with `flutter doctor`.

## Install Android Studio

Install Android Studio with:

```shell script
$ brew install --cask android-studio
```

In Android Studio, install Platform-Tools. Then, set up the platform-tools in your PATH as follows:

```
export PATH="${HOME}/Library/Android/sdk/tools:${HOME}/Library/Android/sdk/platform-tools:${PATH}"
```

## Install CocoaPods

```shell script
$ brew install cocoapods
```

## Reference

Further information:

* [MacOS install](https://docs.flutter.dev/get-started/install/macos)