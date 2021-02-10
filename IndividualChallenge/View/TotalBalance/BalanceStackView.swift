//
//  BalanceStackView.swift
//  IndividualChallenge
//
//  Created by Lucas Oliveira on 09/02/21.
//

import UIKit

class BalanceStackView: UIStackView {
    let firstLabel =  UILabel()
    let secondLabel =  UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        axis = .vertical
        distribution = .equalSpacing
        spacing = 0

        addArrangedSubview(firstLabel)
        addArrangedSubview(secondLabel)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
