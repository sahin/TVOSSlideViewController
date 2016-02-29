TVOSSlideViewController
===

tvOS container view controller inspired by the [zova](http://get.zova.com/) tvos app.

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

![alt tag]()

#### `shrinks = true`

![alt tag]()

Install
----

#### CocoaPods

``` ruby
pod 'TVOSSlideViewController'
```

Usage
----

#### Storyboard

* You need to subclass `TVOSSlideViewController` and set your view controller instantce's class to your subclass.
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