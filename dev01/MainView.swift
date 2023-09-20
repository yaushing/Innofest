//
//  MainView.swift
//  dev01
//
//  Created by ㅤ on 15/8/23.
//

import SwiftUI

struct MainView: View {
    @State private var selection = 2
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                CounterView()
                    .tabItem {
                        Label("Counter", systemImage: "digitalcrown.horizontal.arrow.counterclockwise")
                    }
                    .tag(1)
                GlossaryView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(2)
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "map.fill")
                    }
                    .tag(3)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

