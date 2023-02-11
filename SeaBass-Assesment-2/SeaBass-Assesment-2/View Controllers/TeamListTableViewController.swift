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
        // #warning Incomplete implementation, return the number of rows
        return TeamController.sharedInstance.teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath) as? TeamTableViewCell else { return UITableViewCll() }
        
        let team = TeamController.sharedInstance.teams[indexPath.row]
        cell.update

//        let team = TeamController.sharedInstance.teams[indexPath.row]
//        cell.updateViews(team: team)
//
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            let team = TeamController.sharedInstance.teams[indexPath.row]
//            TeamController.sharedInstance.deleteTeam(team: team)
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        }
//    }
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
}
