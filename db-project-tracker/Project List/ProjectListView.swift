//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import SwiftUI

struct ProjectListView: View {
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
                        // TODO
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
    }
}

#Preview {
    ProjectListView()
}
