//
//  StatBubbleView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 21.11.25.
//

import SwiftUI

struct StatBubbleView: View {
    
    var title: String
    var stat: String
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 15)
                .fill(LinearGradient(colors: [startColor, endColor], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            VStack {
                
                Text(title)
                    .font(Font.captionText)
                
                Text(stat)
                    .font(Font.featuredNumber)
                    .bold()
            }
            .foregroundStyle(.white)
        }
        .frame(width: 60, height: 40)
    }
}

#Preview {
    StatBubbleView(title: "Hours", stat: "290", startColor: Color.navy, endColor: Color.blue)
}
