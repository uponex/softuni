//
//  DishesViewController.swift
//  HomeWork5_L6_Cooking
//
//  Created by Kalin M on 30.09.21.
//

import UIKit

class DishesViewController: UITableViewController {
   
    let allDishes = DishesData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return allDishes.list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegViewCell", for: indexPath) as! TableViewCell
     
        cell.dishName.text = allDishes.list[indexPath.row].name
        cell.dishTime.text = allDishes.list[indexPath.row].time
        cell.dishImage.image = allDishes.list[indexPath.row].image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "IngredientsViewController") as? IngredientsViewController{
            self.navigationController?.pushViewController(vc, animated: true)
            
            vc.img = allDishes.list[indexPath.row].image
            vc.ingredients = allDishes.list[indexPath.row].ingredient
        }
    }
}
