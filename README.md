# Octobuild

⚠️ WIP ⚠️

Execute your build and tests with a list of Xcode versions to ensure maximum compatibility.

## Usage

Specify a space-separated list of versions and the command to run:

```bash
$ VERSIONS='6.2 6.3.2 6.4' ./bin/octobuild swift -version
Building with Xcode 6.2...
Swift version 1.1 (swift-600.0.57.4)
Target: x86_64-apple-darwin14.4.0
Building with Xcode 6.3.2...
Apple Swift version 1.2 (swiftlang-602.0.53.1 clang-602.0.53)
Target: x86_64-apple-darwin14.4.0
Building with Xcode 6.4...
Apple Swift version 1.2 (swiftlang-602.0.49.3 clang-clang-602.0.49)
Target: x86_64-apple-darwin14.4.0
```

Octobuild will execute the given command for each of the specified Xcode versions, installing
them in the process, if needed.

## Installation

Install it yourself as:

    $ gem install octobuild

## Contributing

1. Fork it ( https://github.com/neonichu/octobuild/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
