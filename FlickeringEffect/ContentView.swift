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
                Image(systemName: "clock.fill")
                Text("Outdoor Walking")
                Spacer()
                Text("Due 10:00am")
                    .foregroundStyle(.secondary)
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(13)
            .opacity(isFlickering ? 1.0 : 0.5)
            .foregroundStyle(isFlickering ? .mint : .primary)
            .animation(.easeInOut(duration: 1.0).repeatForever(), value: isFlickering)
            .onAppear {
                isFlickering.toggle()
            }
            
            HStack {
                Image(systemName: "clock.fill")
                Text("Outdoor Walking")
                Spacer()
                Text("Due 10:00am")
                    .foregroundStyle(.secondary)
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(13)
            .phaseAnimator([false, true]) { content, phase in
                content
                    .opacity(phase ? 1.0 : 0.5)
                    .foregroundStyle(isFlickering ? .mint : .primary)
            } animation: { phase in
                    .easeInOut(duration: 1.0)
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
