# POEditor-Parser
A simple generator of swift files from a given localized POeditor `strings` file.

[![Release Version](https://img.shields.io/github/release/bq/poeditor-parser-swift.svg)](https://github.com/bq/poeditor-parser-swift/releases) 
[![Release Date](https://img.shields.io/github/release-date/bq/poeditor-parser-swift.svg)](https://github.com/bq/poeditor-parser-swift/releases)
[![Pod](https://img.shields.io/cocoapods/v/POEditor-Parser.svg?style=flat)](https://cocoapods.org/pods/POEditor-Parser)
[![Platform](https://img.shields.io/cocoapods/p/POEditor-Parser.svg?style=flat)](https://cocoapods.org/pods/POEditor-Parser)
[![GitHub](https://img.shields.io/github/license/masmovil/poeditor-parser-swift.svg)](https://github.com/masmovil/poeditor-parser-swift/blob/master/LICENSE)

[![Build Status](https://travis-ci.com/masmovil/poeditor-parser-swift.svg?branch=master)](https://travis-ci.com/masmovil/poeditor-parser-swift)
[![codecov](https://codecov.io/gh/masmovil/poeditor-parser-swift/branch/master/graph/badge.svg)](https://codecov.io/gh/masmovil/poeditor-parser-swift)

## Usage

```ogdl
/bin/poe $APITOKEN $PROJECTID $LANGUAGE
```

### Options:
* `--stringfile` [default: Localizable.strings] - The input POEditor strings file directory.
* `--swiftfile` [default: Literals.swift] - The output Swift file directory.

## Authors & Collaborators

* **[Edilberto Lopez Torregrosa](https://github.com/ediLT)**
* **[Raúl Pedraza León](https://github.com/r-pedraza)**
* **[Jorge Revuelta](https://github.com/minuscorp)**
* **[Sebastián Varela](https://github.com/sebastianvarela)**

## License

POEditor-Parser is available under the Apache 2.0. See the LICENSE file for more info.  
  
## Android alternative
If you want a similar solution for your Android projects, check this out: [poeditor-android-gradle-plugin](https://github.com/masmovil/poeditor-android-gradle-plugin)
