//
//  TeamDetailViewController.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var teamNameTextField: UITextField!
    @IBOutlet weak var teamCountTextField: UITextField!
    @IBOutlet weak var teamRankTextField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews(team: team)
    }
    // MARK: - Properties
    var team: SportTeam?
    
    // MARK: - Actions
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = teamNameTextField.text, !name.isEmpty,
              let count = teamCountTextField.text, !count.isEmpty,
              let rank = teamRankTextField.text, !rank.isEmpty else { return }
        
        let unwrappedCount = Int(count) ?? 0
        let unwrappedRank = Int(rank) ?? 0
        
        if let team = team {
            TeamController.sharedInstance.updateTeam(team: team, name: name, count: unwrappedCount, ranking: unwrappedRank)
        } else {
            TeamController.sharedInstance.createTeam(name: name, count: unwrappedCount, ranking: unwrappedRank)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        deleteView()
    }
    
    
    
    // MARK: - Helper
    func updateViews(team: SportTeam?) {
        guard let team = team else { return }
        teamNameTextField.text = team.name
        teamCountTextField.text = "\(team.count)"
        teamRankTextField.text = "\(team.ranking)"
    }
    
    func resetView() {
        teamNameTextField.text = ""
        teamCountTextField.text = ""
        teamRankTextField.text = ""
    }
    
    func deleteView() {
        if let team = team {
            guard let index = TeamController.sharedInstance.teams.firstIndex(of: team) else { return }
            TeamController.sharedInstance.teams.remove(at: index)
            resetView()
            
        }
        navigationController?.popViewController(animated: true)
    }
    
}
