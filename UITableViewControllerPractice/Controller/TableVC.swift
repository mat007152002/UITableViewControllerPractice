//
//  TableVC.swift
//  UITableViewControllerPractice
//
//  Created by 旌榮 凌 on 2020/5/13.
//  Copyright © 2020 旌榮 凌. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {

    //var restaurant = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    //var restarrantImg = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "1", type: "1", location: "1", image: "1"),
        Restaurant(name: "2", type: "2", location: "2", image: "2"),
        Restaurant(name: "3", type: "3", location: "3", image: "3"),
        Restaurant(name: "4", type: "4", location: "4", image: "4"),
        Restaurant(name: "5", type: "5", location: "5", image: "5"),
        Restaurant(name: "6", type: "6", location: "6", image: "6"),
        Restaurant(name: "7", type: "7", location: "7", image: "7"),
        Restaurant(name: "8", type: "8", location: "8", image: "8"),
        Restaurant(name: "9", type: "9", location: "9", image: "9"),
        Restaurant(name: "10", type: "10", location: "10", image: "10"),
        
    ]
    
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
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell

        cell.nameLabel.text = restaurants[indexPath.row].name
        cell.locationLabel.text = restaurants[indexPath.row].location
        cell.typeLabel.text = restaurants[indexPath.row].type
        cell.thumbnailImageView.image = UIImage(named: restaurants[indexPath.row].image)

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! RestaurantDetailVC
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
       }
       
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
   

}
