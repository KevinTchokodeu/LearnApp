//
//  ContentView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 29.01.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
            Text("Third View")
                .font(.title)
                .tabItem{
                    VStack{
                        Image("third")
                        Text("third")
                    }
                }
                .tag(2)
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}