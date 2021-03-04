//
//  LoginViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/3/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class LoginViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnLogin(_ sender: Any)
    {
        
        
        
    }
    
    @IBAction func btnJoinwithFoody(_ sender: Any)
    {
       
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SignUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
}
