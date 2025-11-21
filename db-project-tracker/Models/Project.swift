//
//  Project.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import Foundation
import SwiftData

@Model
class Project: Identifiable {
    @Attribute(.unique) var id: String
    var name: String = ""
    var startDate: Date = Date()
    var focus: String = ""
    @Relationship(deleteRule: .cascade, inverse: \ProjectUpdate.project)
    var updates: [ProjectUpdate] = [ProjectUpdate]()
    
    init() {
        id = UUID().uuidString
    }
}
