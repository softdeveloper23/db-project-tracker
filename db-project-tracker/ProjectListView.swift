//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Brannon Garrett on 19.11.25.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        VStack {
            Image(.cross)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.screenHeading)
                .foregroundStyle(Color.orchid)
        }
        .padding()
    }
}

#Preview {
    ProjectListView()
}
