# Octobuild

Execute your build and tests with a list of Xcode versions to ensure maximum compatibility.

## Usage

Specify a space-separated list of versions and the command to run:

```bash
$ VERSIONS='6.1 6.2 6.3' octobuild make test
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
