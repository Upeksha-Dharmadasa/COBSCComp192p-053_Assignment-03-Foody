//
//  ThankyouViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/4/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit
import Firebase

class ThankyouViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnClicktoLogin(_ sender: Any)
    {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    

}
