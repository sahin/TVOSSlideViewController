//
//  ViewController.swift
//  TVOSSlideViewController
//
//  Created by Cem Olcay on 23/02/16.
//  Copyright © 2016 MovieLaLa. All rights reserved.
//

import UIKit

class DemoContentViewController: UIViewController {
  @IBOutlet var leftLabel: UILabel!
  @IBOutlet var rightLabel: UILabel!
}

class ViewController: TVOSSlideViewController {

  var contentViewController: DemoContentViewController?

  override func viewDidLoad() {
    super.viewDidLoad()
    delegate = self
    if let contentViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ContentViewController") as? DemoContentViewController {
      self.contentViewController = contentViewController
      setup(contentViewController: contentViewController)
    }
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
  }

  func slideViewControllerDidUpdateRightDrawer(amount: CGFloat) {
    print(__FUNCTION__)
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
