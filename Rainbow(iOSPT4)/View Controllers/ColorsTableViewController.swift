//
//  ColorsTableViewController.swift
//  Rainbow(iOSPT4)
//
//  Created by David Wright on 11/12/19.
//  Copyright © 2019 David Wright. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    // These are our 2 Required Data Source Methods!!!!! Must haves!!!!
    // How many rows in the tableview??
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    // What data is in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "ShowColorSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow, let colorDetailVC = segue.destination as? ColorDetailViewController else { return }

            let cellColor = colors[indexPath.row]
            
            colorDetailVC.cellColor = cellColor
        }
        // Pass the selected object to the new view controller.
    }

}
