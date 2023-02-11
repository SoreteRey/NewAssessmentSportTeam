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
        
    }
    
    // MARK: - Helper
    func updateViews(team: SportTeam?) {
        guard let team = team else { return }
        teamNameTextField.text = team.name
        teamCountTextField.text = "\(team.count) Players"
        teamRankTextField.text = "\(team.ranking) World Wide!"
    }
    
}
