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
                
                ScrollView {
                    
                    VStack(alignment: .leading) {
                        
                        ZStack(alignment: .leading) {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .opacity(0.7)
                                .shadow(radius: 5, x: 0, y: 4)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                
                                Text("CodeWithChris")
                                    .font(Font.bigHeadline)
                                    .foregroundStyle(.white)
                                
                                HStack(alignment: .center, spacing: 13) {
                                    
                                    Spacer()
                                    
                                    StatBubbleView(title: "Hours", stat: "290", startColor: Color.navy, endColor: Color.blue)
                                    StatBubbleView(title: "Sessions", stat: "34", startColor: Color.green, endColor: Color.lime)
                                    StatBubbleView(title: "Updates", stat: "32", startColor: Color.maroon, endColor: Color.purple)
                                    StatBubbleView(title: "Wins", stat: "9", startColor: Color.maroon, endColor: Color.olive)
                                    
                                    Spacer()
                                }
                                
                                Text("My current focus is...")
                                    .font(Font.featuredText)
                                    .foregroundStyle(.gray)
                                
                                Text("Design the new website")
                                    .font(Font.featuredText)
                                    .foregroundStyle(.gray)
                                    .bold()
                            }
                            .padding()
                        }
                    }
                }
                
                Button {
                    // TODO
                } label: {
                    
                    ZStack {
                        
                        Circle()
                            .frame(width: 65)
                            .foregroundStyle(.black)
                        Image(.cross)
                    }
                }
                
            }
            .padding(20)
        }
    }
}

#Preview {
    ProjectListView()
}
