# ExampleAppForSwiftPackage

An example of how to configure an Xcode project as an example for a Swift Package.
This has been created to respond to [this](https://stackoverflow.com/q/59800045/6900902) question on stack overflow.

If you open `Example/ExampleApp.xcodeproj` it will show you how an Xcode project is consuming the package found at the root of this repo.

## How to create the link from a Swift Package into Xcode
Once you have your `xcodeproj` open it and then drag the directory containing your package into the project navigator on the left.
You will then need to go into the build settings and explicitly add a linkings that need to happen to package libraries.

## Guidelines/Limitations
These are applicable with Xcode 11.3.  

### 1) The `xcodeproj` file cannot live at the same level as the `Package.swift`.
This means that if your are creating a consumable package then you will need to nest the `xcodeproj` into another directory as it is in this example.
If you are creating a local package for app development to help modularize your code then the package and `Package.swift` will need to be put into another directory instead. 

### 2) SwiftUI previews are busted with SwiftPM
Linker settings aren't correctly passed when using SwiftUI and SwiftPM together so you will not get previews.

### 3) Relative path names are used to find the package
If you look into `Example/ExampleApp.xcodeproj/project.pbxproj` you can find this line:
```
F803BC3D23E3DD7E00698037 /* ExampleAppForSwiftPackage */ = {isa = PBXFileReference; lastKnownFileType = folder; name = ExampleAppForSwiftPackage; path = ..; sourceTree = "<group>"; };
```
This is being used along with all the other magic idenfier stuff in `pbxproj` files to know the path to the package in this example.
Because the repo is called `ExampleAppForSwiftPackage` that is the default name when cloned which means that was the directory dragged into the `xcodeproj` and that is what is looked for by Xcode.
If you rename this directory then Xcode will not find the package anymore so you will need to remove the reference and drag it in again so it can create a new relative path to the Package.
