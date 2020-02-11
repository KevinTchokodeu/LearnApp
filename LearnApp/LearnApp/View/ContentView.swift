//
//  ContentView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 29.01.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//  Link: https://developer.apple.com/tutorials/swiftui/
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0 // the tag value
    var body: some View {
        
        TabView(selection: $selection){
            // left
            InputView()
            .tabItem {
                VStack {
                    Image("first")
                    Text("scan/write")
                }
            }
            .tag(0)
            
                  
            // middle
            LearnView()
            .tabItem {
                VStack {
                    Image("second")
                    Text("learn")
                }
            }
            .tag(1)
            
            
            QuizView()
            .tabItem{
                VStack{
                    Image("first")
                    Text("test yourself")
                }
            }
            .tag(2)
        }
        .foregroundColor(.red)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
