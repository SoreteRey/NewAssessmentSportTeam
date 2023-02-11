//
//  TeamListTableViewController.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import UIKit

class TeamListTableViewController: UITableViewController {
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath)
        
        return cell
    }

//
//    // MARK: - Navigation
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "teamDetails" {
//            if let indexPath = tableView.indexPathForSelectedRow,
//               let teamInfoShow = segue.destination as? TeamDetailViewController {
//                let team = TeamController.sharedInstance.teams[indexPath.row]
//                teamInfoShow.team = team
//            }
//        }
    }

