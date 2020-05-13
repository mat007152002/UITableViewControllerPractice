//
//  RestaurantDetailVC.swift
//  UITableViewControllerPractice
//
//  Created by 旌榮 凌 on 2020/5/13.
//  Copyright © 2020 旌榮 凌. All rights reserved.
//

import UIKit

class RestaurantDetailVC: UIViewController {

    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var RestaurantTypeLabel: UILabel!
    @IBOutlet weak var RestaurantLocationLabel: UILabel!
    @IBOutlet weak var restaurantImageView: UIImageView!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantNameLabel.text = restaurant.name
        RestaurantTypeLabel.text = restaurant.type
        RestaurantLocationLabel.text = restaurant.location
        restaurantImageView.image = UIImage(named: restaurant.image)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
