//
//  ContentView.swift
//  TriviaGame
//
//
//  Created by Tamer Afyon on 2.05.2024.
//


import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Image("Shield")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                VStack(spacing: 20) {
                    Text("iOS Swift Quiz App")
                        .lilacTitle()
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Başla")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 1, green: 1, blue: 1))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
