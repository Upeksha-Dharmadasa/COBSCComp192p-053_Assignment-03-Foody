//
//  FoodViewController.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/5/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var FoodTableView: UITableView!
    
    

    let FoodName = [("Tandoori Chicken"),("Spicy Seafood"),("Triple Chicken"),("Hot Butter Cuttlefish"),("Veggie Supreme"),("Vegetable and Pepperoni"),("Cheese Crust"),("Classic Thin Crust"),("Spicy Chicken Pasta"),("Paprika Chicken Pasta"),("Creamy Garlic Chicken Pasta"),("Cheesy Chicken"),("Tuscan Chicken Pasta"),("French Onion Chicken Pasta"),("Lemon Butter Chicken Pasta"),("Buffalo Chicken Burger"),("Cheesy Chicken Burger"),("Lemon Parmesan Chicken Burger"),("Teriyaki Beef Burgers"),("Vegan Burger"),("Double Cheeseburger"),("Double Beef Burger"),("Spanish Rice"),("Mexican Rice"),("Yellow Rice"),("Hibachi Rice"),("Chicken Teriyaki Fried Rice"),("Egg Fried Rice"),("Cheesy Garlic Bread"),("Cheese Corn Balls"),("Crispy Buffalo Chicken Wings"),("Crispy Chicken"),("Seasoned French Fries"),("Gravy Cheese Fries"),("Poutine"),("Cobb Salad"),("Corn Salad"),("Caesar Salad"),("Caramel Milkshake"),("Chocolate Milkshake"),("Coke"),("Pepsi"),("Vanilla Milkshake"),("Oreo Milkshake")];
    
    let FoodDescription = [("With customized crust"),("With customized crust"),("With customized crust"),("With customized crust"),("VWith customized crust"),("With customized crust"),("With customized crust"),("With customized crust"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Customized"),("Customized"),("Customized"),("Customized"),("Customized"),("Customized"),("Customized"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("Regular & Small"),("8 pieces"),("10 pieces"),("12 pieces"),("Full & half"),("Large & Regular"),("Large & Regular"),("Custamized"),("Custamized"),("Custamized"),("Custamized"),("200 ml"),("200 ml"),("1 L"),("1 L"),("200 ml"),("200 ml")];
    
    
    let FoodPrice = [("Rs.570"),("Rs.570"),("Rs.800"),("Rs.560"),("Rs.580"),("Rs.650"),("Rs.570"),("Rs.650"),("Rs.400"),("Rs.520"),("Rs.500"),("Rs.380"),("Rs.400"),("Rs.580"),("Rs.460"),("Rs.800"),("Rs.800"),("Rs.520"),("Rs.520"),("Rs.600"),("Rs.580"),("Rs.520"),("Rs.800"),("Rs.800"),("Rs.640"),("Rs.600"),("Rs.890"),("Rs.520"),("Rs.400"),("Rs.400"),("Rs.580"),("Rs.780"),("Rs.500"),("Rs.480"),("Rs.600"),("Rs.580"),("Rs.560"),("Rs.520"),("Rs.380"),("Rs.380"),("Rs.200"),("Rs.200"),("Rs.380"),("Rs.380")];
    
    let FoodImages =
    [UIImage(named:"Tandoori Chicken"),
    UIImage(named: "Spicy Seafood"),
    UIImage(named: "Triple Chicken"),
    UIImage(named: "Hot Butter Cuttlefish"),
    UIImage(named: "Veggie Supreme"),
    UIImage(named: "Vegetable and Pepperoni"),
    UIImage(named: "Cheese Crust"),
    UIImage(named: "Classic Thin Crust"),
    UIImage(named: "Spicy Chicken Pasta"),
    UIImage(named: "Paprika Chicken Pasta"),
    UIImage(named: "Creamy Garlic Chicken Pasta"),
    UIImage(named: "Cheesy Chicken"),
    UIImage(named: "Tuscan Chicken Pasta"),
    UIImage(named: "French onion chicken pasta"),
    UIImage(named: "Lemon butter chicken pasta"),
    UIImage(named: "Buffalo chicken burger"),
    UIImage(named: "Cheesy Chicken Burger"),
    UIImage(named: "Lemon Parmesan Chicken Burger"),
    UIImage(named: "Teriyaki Beef Burgers"),
    UIImage(named: "Vegan Burger"),
    UIImage(named: "Double Cheeseburger"),
    UIImage(named: "Double Beef Burger"),
    UIImage(named: "Spanish Rice"),
    UIImage(named: "Mexican Rice"),
    UIImage(named: "Yellow Rice"),
    UIImage(named: "Hibachi Rice"),
    UIImage(named: "Chicken Teriyaki Fried Rice"),
    UIImage(named: "Egg Fried Rice"),
    UIImage(named: "Cheesy garlic bread"),
    UIImage(named: "Cheese corn balls"),
    UIImage(named: "Crispy buffalo chicken wings"),
    UIImage(named: "Crispy Chicken"),
    UIImage(named: "Seasoned French Fries"),
    UIImage(named: "Gravy Cheese Fries"),
    UIImage(named: "Poutine"),
    UIImage(named: "Cobb Salad"),
    UIImage(named: "Corn salad"),
    UIImage(named: "Caesar Salad"),
    UIImage(named: "Caramel milkshake"),
    UIImage(named: "Chocolate Milkshake"),
    UIImage(named: "Coke"),
    UIImage(named: "Pepsi"),
    UIImage(named: "Vanilla milkshake"),
    UIImage(named: "Oreo Milkshake")]
     
    override func viewDidLoad() {
        super.viewDidLoad()
        FoodTableView.delegate = self
        FoodTableView.dataSource = self

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FoodName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodCell", for: indexPath as IndexPath)
        as! FoodTableViewCell
        
        cell.ImageCell.image = self.FoodImages[indexPath.row]
        
        cell.NameCell.text = self.FoodName[indexPath.row]
        
        cell.DescriptionCell.text = self.FoodDescription[indexPath.row]
        
        cell.PriceCell.text = self.FoodPrice[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "FoodDetailsViewController") as? FoodDetailsViewController{
            vc.img = UIImage(named: FoodName[indexPath.row])!
            vc.IName = FoodName[indexPath.row]
            vc.Description = FoodDescription[indexPath.row]
            vc.Price = FoodPrice[indexPath.row]
            
        
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
  }
}
