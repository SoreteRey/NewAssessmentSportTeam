//
//  SportTeamController.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import Foundation

class TeamController {
    
    // MARK: - Properties
    static let sharedInstance = TeamController()
    var teams: [SportTeam] = []

    
    // MARK: - Functions
    func createTeam(name: String, count: Int, ranking: Int) {
        let team = SportTeam(name: name, count: count, ranking: ranking)
        teams.append(team)
    }
    
    func updateTeam(team: SportTeam, name: String, count: Int, ranking: Int) {
        team.name = name
        team.count = count
        team.ranking = ranking
    }
    
    func deleteTeam(team: SportTeam) {
        guard let index = TeamController.sharedInstance.teams.firstIndex(of: team) else { return }
        TeamController.sharedInstance.teams.remove(at: index)
    }
}//end of class

