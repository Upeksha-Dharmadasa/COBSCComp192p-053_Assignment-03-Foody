//
//  FoodDetailsViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/6/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit

class FoodDetailsViewController: UIViewController {

    @IBOutlet weak var DetaiImage: UIImageView!
    @IBOutlet weak var DetailName: UILabel!
    @IBOutlet weak var DetailDescription: UILabel!
    @IBOutlet weak var DetailPrice: UILabel!
    
    var img = UIImage()
    var IName = ""
    var Description = ""
    var Price = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetaiImage.image = img
        DetailName.text = IName
        DetailDescription.text = Description
        DetailPrice.text = Price

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CustomMeal(_ sender: Any) {
    }
    
    @IBAction func AddtoCart(_ sender: Any) {
        
                  let storyboard = UIStoryboard(name: "Main", bundle: nil)
                  let vc = storyboard.instantiateViewController(identifier: "AddCart" )
                         vc.modalPresentationStyle = .overFullScreen
                  self.present(vc, animated: true)
                       
    }
    

}
