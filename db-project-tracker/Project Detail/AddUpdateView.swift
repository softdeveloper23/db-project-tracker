//
//  AddUpdateView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 22.11.25.
//

import SwiftUI

struct AddUpdateView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var project: Project
    @State private var headline: String = ""
    @State private var summary: String = ""
    @State private var hours: String = ""
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("New Update")
                    .foregroundStyle(.white)
                    .font(Font.bigHeadline)
                
                TextField("Headline", text: $headline)
                    
                
                TextField("Summary", text: $summary)
                
                HStack {
                    
                    TextField("Hours", text: $hours)
                    
                    Button("Save") {
                        // TODO
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                
                Spacer()
            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            .padding(.top)
        }
    }
}
