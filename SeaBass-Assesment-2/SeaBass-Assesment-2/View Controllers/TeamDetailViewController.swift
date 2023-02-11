//
//  TeamDetailViewController.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBAction func teamTitleTextField(_ sender: Any) {}
    @IBAction func teamCounterTextField(_ sender: Any) {}
    @IBAction func teamRankingTextField(_ sender: Any) {}
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - Actions
    //    @IBAction func saveButtonTapped(_ sender: Any) {
    //        guard let name = teamTitleTextField.text, !name.isEmpty,
    //              let count = teamCounterTextField.text, !count.isEmpty,
    //              let  ranking = teamRankingTextField.text, !ranking.isEmpty else { return }
    //
    //    }
    //}
    //// MARK: - Helper
    //func updateViews(team: SportTeam?) {
    //    guard let team = team else { return }
    //    teamTitleTextField.text = team.name
    //    teamCounterTextField.text = team.count
    //    teamRankingTextField.text = team.ranking
    //
    //}
}
