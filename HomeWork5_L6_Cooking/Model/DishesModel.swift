//
//  DishesData.swift
//  HomeWork5_L6_Cooking
//
//  Created by Kalin M on 4.10.21.
//

import UIKit

class Dishes {
    
    let name: String
    let time: String
    let image: UIImage
    let ingredient: String
    
    
    init(name: String, time: String, image: UIImage, ingredient: String) {
        
        self.name = name
        self.time = time
        self.image = image
        self.ingredient = ingredient
    }
    
}

