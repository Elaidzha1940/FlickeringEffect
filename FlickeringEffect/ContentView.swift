//  /*
//
//  Project: FlickeringEffect
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 10.08.2024
//
//  /*

import SwiftUI

struct ContentView: View {
    @State private var isFlickering = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "")
                Text("Outdoor Walking")
                      .foregroundStyle(.mint)
                Spacer()
                Text("Due 10:00am")
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
