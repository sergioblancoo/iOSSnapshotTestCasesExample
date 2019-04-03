//
//  CustomNavController.swift
//  iOSSnapshotTestCaseExample
//
//  Created by Sergio Blanco on 3/4/19.
//  Copyright © 2019 Sergio Blanco. All rights reserved.
//

import UIKit

class CustomNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
    }

  

}
