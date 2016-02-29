//
//  ViewController.swift
//  TVOSSlideViewController
//
//  Created by Cem Olcay on 23/02/16.
//  Copyright © 2016 MovieLaLa. All rights reserved.
//

import UIKit

class ViewController: TVOSSlideViewController {

  var drawerAnimation: CABasicAnimation {
    let anim = CABasicAnimation(keyPath: "backgroundColor")
    anim.fromValue = UIColor.whiteColor().CGColor
    anim.toValue = UIColor.grayColor().CGColor
    anim.duration = 1
    return anim
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self

    // left and right drawer animations
    leftView?.layer.addAnimation(drawerAnimation, forKey: "drawerAnimation")
    rightView?.layer.addAnimation(drawerAnimation, forKey: "drawerAnimation")
    leftView?.layer.speed = 0
    rightView?.layer.speed = 0

    // content view controller
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let contentViewController = storyboard.instantiateViewControllerWithIdentifier("ContentViewController")
    setup(contentViewController: contentViewController)
  }
}

extension ViewController: TVOSSlideViewControllerDelegate {

  func slideViewControllerDidBeginUpdateLeftDrawer() {
    print(__FUNCTION__)
  }

  func slideViewControllerDidBeginUpdateRightDrawer() {
    print(__FUNCTION__)
  }

  func slideViewControllerDidUpdateLeftDrawer(amount: CGFloat) {
    print(__FUNCTION__)
    leftView?.layer.timeOffset = CFTimeInterval(amount)
  }

  func slideViewControllerDidUpdateRightDrawer(amount: CGFloat) {
    print(__FUNCTION__)
    rightView?.layer.timeOffset = CFTimeInterval(amount)
  }

  func slideViewControllerDidEndUpdateLeftDrawer(amount: CGFloat) {
    print(__FUNCTION__)
  }

  func slideViewControllerDidEndUpdateRightDrawer(amount: CGFloat) {
    print(__FUNCTION__)
  }

  func slideViewControllerDidSelectLeftDrawer() {
    print(__FUNCTION__)
  }

  func slideViewControllerDidSelectRightDrawer() {
    print(__FUNCTION__)
  }
}
