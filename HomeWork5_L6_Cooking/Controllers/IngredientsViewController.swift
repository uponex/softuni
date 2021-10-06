//
//  IngredientsViewController.swift
//  HomeWork5_L6_Cooking
//
//  Created by Kalin M on 1.10.21.
//

import UIKit

class IngredientsViewController: UIViewController {
    @IBOutlet weak var dishImageFinal: UIImageView!
    @IBOutlet weak var ingredientsText: UILabel!
    
    let allDishes = DishesData()
    
    var img = UIImage()
    var ingredients = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dishImageFinal.image = img
        ingredientsText.text = ingredients
    
    }
}
