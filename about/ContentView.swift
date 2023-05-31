//
//  ContentView.swift
//  about
//
//  Created by Allen Jeffrey on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                P1View()
                    .tabItem {
                        Label("Person 1", systemImage: "person.fill")
                    }
                P2View()
                    .tabItem {
                        Label("Person 2", systemImage: "person.fill")
                    }
                P3View()
                    .tabItem {
                        Label("Person 3", systemImage: "person.fill")
                    }
            }
            .ignoresSafeArea([.all])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
