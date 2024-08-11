⌨️ Animated Flickering Effect.
======

https://github.com/user-attachments/assets/dcf70a70-df0b-43f1-8933-a2bec132e6a9

------

`````ruby
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
`````
------

