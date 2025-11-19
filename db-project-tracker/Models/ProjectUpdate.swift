//
//  ProjectUpdate.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import Foundation
import SwiftData

@Model
class ProjectUpdate: Identifiable {
    @Attribute(.unique) var id: String
    var headline: String = ""
    var summary: String = ""
    var date: Date = Date()
    var hours: Double = 0.0
    var updateType: UpdateType = UpdateType.log
    var project: Project?
    
    init() {
        id = UUID().uuidString
    }
}

enum UpdateType: Codable {
    case log
    case milestone
}
