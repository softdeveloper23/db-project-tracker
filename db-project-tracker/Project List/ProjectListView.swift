//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import SwiftUI

struct ProjectListView: View {
    
    @State private var newProject: Project?
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(colors: [Color(.deepPurple), Color(.blushPink)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("Projects")
                    .font(Font.screenHeading)
                    .foregroundStyle(.white)
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 26) {
                        
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                    }
                }
            }
            .padding(20)
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        // Create new project
                        self.newProject = Project()
                    }, label: {
                        
                        ZStack {
                            
                            Circle()
                                .frame(width: 65)
                                .foregroundStyle(.black)
                            Image(.cross)
                        }
                    })
                    Spacer()
                }
            }
            .padding()
        }
        .sheet(item: $newProject) { project in
            AddProjectView(project: project)
                .presentationDetents([.fraction(0.2)])
        }
    }
}

#Preview {
    ProjectListView()
}
