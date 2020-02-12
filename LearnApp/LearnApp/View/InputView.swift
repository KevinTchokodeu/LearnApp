//
//  InputView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct InputView: View{
    @State private var change = false
    var body: some View {
        NavigationView {
            VStack {
                InputField()
                .offset(x: 0, y: change ? 900 : 0)
                .animation(Animation.easeInOut)
                .scaledToFit()
                .foregroundColor(.green)
               
                
                Button(self.change ? "scan" : "enter"){
                    self.change.toggle()
                }.padding(.bottom)
                 .foregroundColor(.green)
                    .font(.title)
            }
            .navigationBarTitle("Scan or Write", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .green
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
            })
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
