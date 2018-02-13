# Square1 Security

<p align="center">
<img src="https://img.shields.io/cocoapods/v/Square1Security.svg" alt="Cocoapods"/>
<img src="https://img.shields.io/badge/platform-ios-red.svg" alt="Platform"/>
</p>

A handy collection of helpers, types and hacks used on our Swift projects.

### Prerequisites

* iOS 9.0+
* XCode 9+
* Swift 4+

## Installing

### Cocoapods

If you're already using Cocoapods in your project, just skip to step 3
1. Install [Cocoapods](https://guides.cocoapods.org/using/getting-started.html)
2. Create a [Podfile](https://guides.cocoapods.org/using/using-cocoapods.html) for your project
3. Make sure you use 
```swift
use_frameworks!
```
4. Add this pod to your Podfile
```swift
pod 'Square1Security'
```
5. Run ```pod install```
6. Use this import on every file you want to use the pod
```swift
import Square1Security
```

## How to use

## Keychain

*Keychain* is a helper class to quickly access to stored values in iOS Keychain.

You can instance a Keychain object like this:

```swift
let keychain = Keychain()

// You can also instance it with a specific access group.
let anotherKeychain = Keychain(accessGroup: "MyGroup")
```

Using Keychain to is straightforward :
```swift
// Save into keychain
keychain.save("Hello World!!", forKey: "MyKey") // returns true if ok, otherwise false

// Read from keychain
keychain.get("MyKey") // returns String?

// Delete from keychain
keychain.delete("MyKey") // returns true if ok, otherwise false
```

## Contributing

Please read [CONTRIBUTING](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* [Roberto Pastor](https://github.com/WedgeSparda)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details

## Acknowledgments

To all the great Swift community out there.