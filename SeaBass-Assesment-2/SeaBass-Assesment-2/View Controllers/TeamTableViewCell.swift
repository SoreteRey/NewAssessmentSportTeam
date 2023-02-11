//
//  TeamTableViewCell.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamCountLabel: UILabel!
    @IBOutlet weak var teamRankLabel: UILabel!
    
    // MARK: - Actions
    
    
    
    // MARK: - Methods
    func updateViews(team: SportTeam) {
        teamNameLabel.text = team.name
        teamCountLabel.text = "\(team.count) Players"
        teamRankLabel.text = "\(team.ranking) World Wide!"
    }
}// end of class
