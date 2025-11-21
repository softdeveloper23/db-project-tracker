//
//  ProjectDetailView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct ProjectDetailView: View {
    
    var project: Project
    
    var body: some View {
        Text(project.name)
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
