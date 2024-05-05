//
//  Answer.swift
//  TriviaGame
//
//  Created by Tamer Afyon on 2.05.2024.
//


import Foundation

struct Answer: Identifiable {
    var id = UUID() // Setting the UUID ourselves inside of the model, because API doesn't return a unique ID for each answer
    var text: AttributedString
    var isCorrect: Bool
}
