//
//  iOSSnapshotTestCaseExampleTests.swift
//  iOSSnapshotTestCaseExampleTests
//
//  Created by Sergio Blanco on 2/4/19.
//  Copyright © 2019 Sergio Blanco. All rights reserved.
//

import FBSnapshotTestCase
@testable import iOSSnapshotTestCaseExample

class iOSSnapshotTestCaseExampleTests: FBSnapshotTestCase {

  let storyboardName = "Main"

  override func setUp() {
    super.setUp()
    self.recordMode = false
  }

  func testWelcomeViewController() {
    FBSnapshotVerifyView(getUIViewController(storyboardName: storyboardName, viewControllerIdentifier: "WelcomeViewController").view)
  }

  func testSignUpViewController() {
    FBSnapshotVerifyView(getUIViewController(storyboardName: storyboardName, viewControllerIdentifier: "SignUpViewController").view)
  }

  func testSignedViewController() {
    FBSnapshotVerifyView(getUIViewController(storyboardName: storyboardName, viewControllerIdentifier: "SignedViewController").view)
  }

  func testLoginViewController() {
    FBSnapshotVerifyView(getUIViewController(storyboardName: storyboardName, viewControllerIdentifier: "LoginViewController").view)
  }

  func testLoggedViewController() {
    FBSnapshotVerifyView(getUIViewController(storyboardName: storyboardName, viewControllerIdentifier: "LoggedViewController").view)
  }

}

func getUIViewController(storyboardName: String, viewControllerIdentifier: String) -> UIViewController {
  let viewController: UIViewController = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewControllerIdentifier)
  return viewController
}
