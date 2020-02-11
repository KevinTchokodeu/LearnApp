//
//  QuizView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//

import SwiftUI

struct QuizView: View{
    var body: some View{
        NavigationView{
            VStack{
                Text("Quiz")
            }
            .navigationBarTitle(Text("Quiz").font(.title))
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
