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
        
        Signup()
        
    }
    
    
func emailValidate(_ semail: String)-> Bool
{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: semail)
}
           
func passwordValidate(_ spassword: String) -> Bool
{
    let minLength = 6
    return spassword.count >= minLength
    
}
    
func mobileValidate(_ Mobile: String)-> Bool
{
       
    let regEx = "^\\+(?:[0-9]?){6,14}[0-9]$"
    let phoneCheck = NSPredicate(format: "SELF MATCHES[c] %@", regEx)
    return phoneCheck.evaluate(with: Mobile)
            
}
    
    
    func Signup()
        
    {
        
        if semail.text?.isEmpty == true
        {
            let alert = UIAlertController(title: "Error", message: "Email field cannot be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
       
        if !emailValidate(semail.text!)
        {
            let alert = UIAlertController(title: "Error", message: "Enter a valid Email", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        if spassword.text?.isEmpty == true
               {
                   let alert = UIAlertController(title: "Error", message: "Password cannot be empty", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                   self.present(alert, animated: true, completion: nil)
                   return
               }
        
        if !passwordValidate(spassword.text!)
        {
            let alert = UIAlertController(title: "Error", message: "Enter a strong password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
       
        if confirmpass.text?.isEmpty == true
        {
            let alert = UIAlertController(title: "Error", message: "Please confirm your password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        if (confirmpass.text != spassword.text)
        {
            let alert = UIAlertController(title: "Error", message: "Password mismatch", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        
        
        if mobile.text?.isEmpty == true
        {
            let alert = UIAlertController(title: "Error", message: "Please Enter Correct Phone Number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            return
        }
        
        if !mobileValidate(mobile.text!)
               {
                   let alert = UIAlertController(title: "Error", message: "Enter a valid Mobile number", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                   self.present(alert, animated: true, completion: nil)
                   return
               }
        
        
       Auth.auth().createUser(withEmail: semail.text!, password: spassword.text!) { (authResult, error) in
        
            if let error = error as NSError?
            {
                
            switch AuthErrorCode(rawValue: error.code)
            {
            
            case .operationNotAllowed:
                
                let alert = UIAlertController(title: "Error", message: "Invalid Email", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                break
                
            case .emailAlreadyInUse:
                let alert = UIAlertController(title: "Error", message: "This email address is already in use by another account.", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                break
              
            case .invalidEmail:
                let alert = UIAlertController(title: "Error", message: "The email address is badly formatted", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                break
                
            case .weakPassword:
                let alert = UIAlertController(title: "Error", message: "Password must be greater than 6 characters", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
                break
                
            default:
                let alert = UIAlertController(title: "Error", message: "An error occured while performing this action", preferredStyle: .alert)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                            self.present(alert, animated: true, completion: nil)
            }
        }
        
        else
        {
          let newUser = Auth.auth().currentUser
            _ = newUser?.email
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "Thankyou")
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
        }
          return

    }
    
  }
    
    @IBAction func AlreadyAMember(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
}
