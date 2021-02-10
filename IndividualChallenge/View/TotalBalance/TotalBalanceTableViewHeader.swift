//
//  TotalBalance.swift
//  IndividualChallenge
//
//  Created by Lucas Oliveira on 09/02/21.
//

import UIKit
class TotalBalanceTableViewHeader: UITableViewHeaderFooterView {
    static let idReuse = "totalBalanceHeader"

    let totalBalanceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .grayOne
        label.text = "Saldo Total"
        label.font = UIFont(name: "Lato-Medium", size: 20)
        return label
    }()

    let valueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .purple
        label.font = UIFont(name: "Lato-Black", size: 33)
        return label
    }()

    init(balance: Double, reuseIdentifier: String) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        valueLabel.text = "R$ 200,00"
        contentView.backgroundColor = .background
        layer.masksToBounds = false
        addTotalBalanceLabel()
        addValueLabel()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addTotalBalanceLabel() {
        addSubview(totalBalanceLabel)
        totalBalanceLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            totalBalanceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            totalBalanceLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16)
        ])
    }

    func addValueLabel() {
        addSubview(valueLabel)
        valueLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: totalBalanceLabel.bottomAnchor, constant: 4),
            valueLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            valueLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
}
