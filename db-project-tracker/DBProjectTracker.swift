//
//  db_project_trackerApp.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import SwiftUI
import SwiftData

@main
struct DBProjectTracker: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
