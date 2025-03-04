//
//  ContentView.swift
//  ios
//
//  Created by 黄祥云 on 2025/2/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.medium)
                .foregroundStyle(.tint)
            Text("Hello, world! abc")
            
            //rn view
//            RNDelegateView().frame(height: 400)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
