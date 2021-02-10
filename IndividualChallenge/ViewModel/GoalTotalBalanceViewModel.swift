//
//  GoalTotalBalanceViewModel.swift
//  IndividualChallenge
//
//  Created by Lucas Oliveira on 09/02/21.
//

import Foundation
class GoalTotalBalanceViewModel {
    let title: String
    let currentPrice: String
    let targetPrice: String
    let deadLine: String

    init(goal: Goal) {
        title = goal.name
        currentPrice = "R$ \(goal.currentPrice)"
        targetPrice = "R$ \(goal.targetPrice)"
        deadLine = goal.deadline.description
    }
}
