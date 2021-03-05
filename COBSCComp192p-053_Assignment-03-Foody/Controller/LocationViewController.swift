//
//  LocationViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/4/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit
import SPPermissions

class LocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnShowPermission(_ sender: Any)
    {
        let controller = SPPermissions.dialog([.locationWhenInUse])
        
        controller.titleText = "Location permission"
        controller.present(on: self)
        
    }
    
}
