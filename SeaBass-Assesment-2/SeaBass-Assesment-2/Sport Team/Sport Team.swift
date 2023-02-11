//
//  Sport Team.swift
//  SeaBass-Assesment-2
//
//  Created by Sebastian Guiscardo on 2/10/23.
//

import Foundation

class SportTeam {
    var name: String
    var count: Int
    var ranking: Int
    var uuid: UUID = UUID()
    
    init(name: String, count: Int, ranking: Int) {
        self.name = name
        self.count = count
        self.ranking = ranking
    }
}

    // MARK: - Extension
    
    extension SportTeam: Equatable {
        static func == (lhs: SportTeam, rhs: SportTeam) -> Bool {
            return lhs.uuid == rhs.uuid
        }
    
}//end of class


