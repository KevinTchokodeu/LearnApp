//
//  LearnView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct LearnView: View{
    @State private var change = false

    var body: some View{
        NavigationView{
            VStack{
                InputField()
                .offset(x: 0, y: change ? 1000 : 0)
                    .animation(Animation.easeIn)
                .scaledToFit()
                
                
                Text("learn")
                    .font(.title)
            }
            .navigationBarTitle("learn", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .red
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
