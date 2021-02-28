//
//  ViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 2/26/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        self.performSegue(withIdentifier: "SignInToMain", sender: nil)
    }
    
}

