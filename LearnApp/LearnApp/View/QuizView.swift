//
//  QuizView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct QuizView: View{
    @State private var change = false
    var body: some View{
        NavigationView{
            VStack{
                InputField()
                .offset(x: 0, y: change ? 900 : 0)
                .animation(Animation.easeOut)
                .scaledToFit()
                .foregroundColor(.yellow)
        
                Text("quiz")
                    .font(.title)
                    .foregroundColor(.yellow)
            }
            .navigationBarTitle("quiz", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .yellow
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
