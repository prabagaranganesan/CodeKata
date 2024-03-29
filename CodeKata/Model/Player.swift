//
//  Person.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

class Player {
    let name: String
    public private(set) var score: Int
    
    private let pointsTextsPerScore = [0: "Love", 1: "Fifteen", 2: "Thirty", 3: "Forty"]
    
    init(name: String,
         score: Int) {
        self.name = name
        self.score = score
    }
    
    func winsTheBall() {
        score += 1
    }
    
    func getPointText() -> String {
        if let pointsText = pointsTextsPerScore[score] {
            return pointsText
        } else {
            return ""
        }
    }
    
    func reset() {
        score = 0
    }
}
