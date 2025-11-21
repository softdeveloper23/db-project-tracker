//
//  ProjectUpdateView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct ProjectUpdateView: View {
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundStyle(.black)
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack {
                    
                    Text("Thursday, October 20, 2025")
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text("9 Hours")
                        .padding(.trailing)
                }
                .padding(.vertical, 5)
                .background {
                    Color(.orchid)
                }
                
                Text("Project Headline")
                    .font(Font.smallHeadline)
                    .padding(.horizontal)
                
                Text("Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ")
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .foregroundStyle(.white)
            .font(Font.regularText)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProjectUpdateView()
}
