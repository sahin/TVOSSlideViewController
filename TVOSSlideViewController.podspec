#
#  Be sure to run `pod spec lint TVOSSlideViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "TVOSSlideViewController"
  s.version      = "0.3"
  s.summary      = "Container view controller with left and right drawer controlling by pan gesture for tvOS."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
TVOSSlideViewController
===

Container view controller with left and right drawer controlling by pan gesture for tvOS.
inspired by the [zova](http://get.zova.com/) tvos app.

Features
----

* Optional left and/or right drawers.
* Customisable slide range.
* Customisable trashold for select state.
* Storyboard support.
* Autolayout support.
* Setup trough the code without storyboard.
* Shrinks content

Demo
----

#### `shrinks = false`

![alt tag](https://raw.githubusercontent.com/movielala/TVOSSlideViewController/master/demo.gif)

#### `shrinks = true`

![alt tag](https://raw.githubusercontent.com/movielala/TVOSSlideViewController/master/shrink.gif)

Install
----

#### CocoaPods

``` ruby
pod 'TVOSSlideViewController'
```

Usage
----

#### Storyboard

* You need to subclass `TVOSSlideViewController` and set your view controller instantce's class to your subclass in IB.
* Customise `TVOSSlideViewController`s `@IBInspectable` properties in interface builder without touching code
* call `setup(contentViewController:)` function in your subclass for setup content view.
* You can inject whatever you want as content.

#### Code

Different from storyboard implementation, you can initilze `TVOSSlideViewController` directly with:

``` swift
public init(contentViewController: UIViewController, leftView: UIView?, rightView: UIView?)
```

TVOSSlideViewControllerDelegate
----

* This is the control protocol of `TVOSSlideViewConroller`.
* Events like didSelect, didUpdate, didCancel could be handled by implementing this delegate.
* `amount: CGFlaot` returns the drawers visibility range between 0-1 for easier drawer animation implementation.

``` swift
@objc public protocol TVOSSlideViewControllerDelegate {
optional func slideViewControllerDidBeginUpdateLeftDrawer(slideViewController: TVOSSlideViewController)
optional func slideViewControllerDidBeginUpdateRightDrawer(slideViewController: TVOSSlideViewController)
optional func slideViewControllerDidUpdateLeftDrawer(slideViewController: TVOSSlideViewController, amount: CGFloat)
optional func slideViewControllerDidUpdateRightDrawer(slideViewController: TVOSSlideViewController, amount: CGFloat)
optional func slideViewControllerDidEndUpdateLeftDrawer(slideViewController: TVOSSlideViewController, amount: CGFloat)
optional func slideViewControllerDidEndUpdateRightDrawer(slideViewController: TVOSSlideViewController, amount: CGFloat)
optional func slideViewControllerDidSelectLeftDrawer(slideViewController: TVOSSlideViewController)
optional func slideViewControllerDidSelectRightDrawer(slideViewController: TVOSSlideViewController)
}
```
                   DESC

  s.homepage     = "https://github.com/movielala/TVOSSlideViewController"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "cemolcay" => "ccemolcay@gmail.com" }
  # Or just: s.author    = "cemolcay"
  # s.authors            = { "cemolcay" => "ccemolcay@gmail.com" }
  # s.social_media_url   = "http://twitter.com/cemolcay"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :tvos, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/movielala/TVOSSlideViewController.git", :tag => "v0.3" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "TVOSSlideViewController/TVOSSlideViewController"
  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
