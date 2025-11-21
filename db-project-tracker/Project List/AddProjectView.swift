//
//  AddProjectView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct AddProjectView: View {
    
    var project: Project
    @State var projectName: String = ""
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("New Project")
                    .foregroundStyle(.white)
                    .font(Font.bigHeadline)
                
                HStack {
                    
                    TextField("Project Name", text: $projectName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Save") {
                        // TODO: Save project to SwiftData
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

#Preview {
    AddProjectView(project: Project())
}
