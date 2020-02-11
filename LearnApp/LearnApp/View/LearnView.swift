//
//  LearnView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct LearnView: View{
    var body: some View{
        NavigationView{
            VStack{
                Text("learn")
            }
            .navigationBarTitle(Text("Learn")
                    .font(.title)
            )
        }
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
