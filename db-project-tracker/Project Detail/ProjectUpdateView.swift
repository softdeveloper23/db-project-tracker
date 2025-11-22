//
//  ProjectUpdateView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct ProjectUpdateView: View {
    
    var update: ProjectUpdate
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundStyle(.black)
                .shadow(radius: 5, x: 0, y: 4)
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack {
                    
                    Text(DateHelper.projectUpdateDate(inputDate: update.date))
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text("\(String(Int(update.hours))) Hours")
                        .padding(.trailing)
                }
                .padding(.vertical, 5)
                .background {
                    Color(.orchid)
                }
                
                Text(update.headline)
                    .font(Font.smallHeadline)
                    .padding(.horizontal)
                
                Text(update.summary)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .foregroundStyle(.white)
            .font(Font.regularText)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
