//
//  SignUpViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/3/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var semail: UITextField!
    @IBOutlet weak var mobile: UITextField!
    @IBOutlet weak var spassword: UITextField!
    @IBOutlet weak var confirmpass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSignup(_ sender: Any)
    {
        if semail.text?.isEmpty == true
        {
            print("Enter a valid Email")
            return
        }
        
        if mobile.text?.isEmpty == true
        {
            print("Enter a valid Mobile number")
            return
        }
        
        if spassword.text?.isEmpty == true
        {
            print("Enter password")
            return
        }
        
        if confirmpass.text?.isEmpty == true
        {
            print("Confirm your password")
            return
        }
        
        if confirmpass.text != spassword.text
        {
            print("Password Mismatch")
            return
        }
        
        Signup()
        
    }
    
    
    func Signup()
    {
        
        Auth.auth().createUser(withEmail: semail.text!, password: spassword.text!) { (authResult, error) in
            guard let user = authResult?.user, error == nil
            else{
                print("Error \(String(describing: error?.localizedDescription))")
                return
                }
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "Thankyou")
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
            
     }
        
    }
    
}
