//
//  ProjectDetailView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    var project: Project
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color(.navy), Color(.skyBlue)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                
                // Header
                VStack(alignment: .leading, spacing: 13) {
                    
                    Text(project.name)
                        .font(Font.screenHeading)
                    
                    HStack(alignment: .center, spacing: 13) {
                        
                        Spacer()
                        
                        StatBubbleView(title: "Hours", stat: "290", startColor: Color.navy, endColor: Color.blue)
                        StatBubbleView(title: "Sessions", stat: "34", startColor: Color.turtleGreen, endColor: Color.lime)
                        StatBubbleView(title: "Updates", stat: "32", startColor: Color.maroon, endColor: Color.fuschia)
                        StatBubbleView(title: "Wins", stat: "9", startColor: Color.maroon, endColor: Color.olive   )
                        
                        Spacer()
                    }
                    
                    Text("My current focus is...")
                        .font(Font.featuredText)
                    
                    HStack {
                        
                        Image(systemName: "checkmark.square")
                        Text("Design the new website")
                            .font(Font.featuredText)
                    }
                    .padding(.leading)
                }
                .foregroundStyle(.white)
                .padding()
                .background {
                    Color(.black)
                        .opacity(0.7)
                        .clipShape(.rect(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .ignoresSafeArea()
                }
                
                // Project updates
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 27) {
                        
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                    }
                    .padding()
                    .padding(.bottom, 80)
                    
                }
            }
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        // TODO: Add project update
                    }, label: {
                        ZStack {
                            Circle()
                                .foregroundStyle(.black)
                                .frame(width: 65)
                            Image(.cross)
                        }
                    })
                    .padding([.leading, .top])
                    Spacer()
                    Button("Back") {
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(.white)
                    .tint(.black)
                    .padding([.trailing, .top])
                }
                .background {
                    Color.black
                        .opacity(0.5)
                        .clipShape(.rect(topLeadingRadius: 15, topTrailingRadius: 15))
                        .ignoresSafeArea()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
