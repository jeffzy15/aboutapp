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
                        Label("Jeffrey", systemImage: "square.and.pencil")
                    }
                P2View()
                    .tabItem {
                        Label("Ethan", systemImage: "magnifyingglass")
                    }
                P3View()
                    .tabItem {
                        Label("Qi An", systemImage: "person.fill")
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
