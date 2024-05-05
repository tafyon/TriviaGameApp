//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Tamer Afyon on 2.05.2024.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Image("Shield")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                Text("iOS Swift Quiz App")
                    .lilacTitle()

                Text("Tebrikler, Testi tamamladın! 🥳")
                
                Text("Skorun \(triviaManager.length) üzerinden \(triviaManager.score)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Tekrar Başla")
                }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 1, green: 1, blue: 1))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
