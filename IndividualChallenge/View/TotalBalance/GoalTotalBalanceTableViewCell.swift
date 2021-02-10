//
//  GoalTotalBalanceTableViewCell.swift
//  IndividualChallenge
//
//  Created by Lucas Oliveira on 09/02/21.
//

import UIKit

class GoalTotalBalanceTableViewCell: UITableViewCell {

    let idReuse = "BalanceTableViewCell"

    var viewModel: GoalTotalBalanceViewModel? {
        didSet {
            leftStackView.firstLabel.text = viewModel?.title
            leftStackView.secondLabel.text = viewModel?.deadLine

            rightStackView.firstLabel.text = viewModel?.currentPrice
            rightStackView.secondLabel.text = viewModel?.targetPrice
        }
    }

    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .background
        view.layer.cornerRadius = 8

        view.layer.shadowColor = UIColor.purple.cgColor
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 8

        return view
    }()

    let progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.progressTintColor = .red
        progressView.trackTintColor = .grayThree
        progressView.layer.cornerRadius = 5
        progressView.clipsToBounds = true
        progressView.progress = 0.01
        return progressView
    }()

    let viewColor: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.cyan.withAlphaComponent(0.15)
        view.layer.cornerRadius = 6
        return view
    }()

    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Airplane")
        imageView.layer.cornerRadius = 6
        return imageView
    }()

    let leftStackView: BalanceStackView = {
        let stackView = BalanceStackView()
        stackView.alignment = .leading

        let firstLabel = stackView.firstLabel
        firstLabel.font = UIFont(name: "Lato-Medium", size: 16)
        firstLabel.textColor = .grayOne

        let secondLabel = stackView.secondLabel
        secondLabel.font = UIFont(name: "Lato-Medium", size: 13)
        secondLabel.textColor = .grayTwo

        return stackView
    }()

    let rightStackView: BalanceStackView = {
        let stackView = BalanceStackView()
        stackView.alignment = .trailing

        let firstLabel = stackView.firstLabel
        firstLabel.font = UIFont(name: "Lato-Semibold", size: 17)
        firstLabel.textColor = .grayOne

        let secondLabel = stackView.secondLabel
        secondLabel.font = UIFont(name: "Lato-Semibold", size: 13)
        secondLabel.textColor = .grayTwo

        return stackView
    }()

    init() {
        super.init(style: .default, reuseIdentifier: idReuse)
        contentView.backgroundColor = .clear
        backgroundColor = .clear
        selectionStyle = .none

        addCardView()
        addProgressView()
        addViewColor()
        addIconImageView()
        addLeftStackView()
        addRightStackView()
        
    }

//    override class func awakeFromNib() {
//        layer.masksToBounds = false
//    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addCardView() {
        contentView.addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            cardView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            cardView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            cardView.heightAnchor.constraint(equalToConstant: 82)
        ])
    }

    func addProgressView() {
        cardView.addSubview(progressView)
        progressView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            progressView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -8),
            progressView.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 8),
            progressView.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: -8),
            progressView.heightAnchor.constraint(equalToConstant: 10)
        ])
    }

    func addViewColor() {
        cardView.addSubview(viewColor)
        viewColor.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            viewColor.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8),
            viewColor.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 8),
            viewColor.heightAnchor.constraint(equalToConstant: 48),
            viewColor.widthAnchor.constraint(equalToConstant: 48)
        ])
    }

    func addIconImageView() {
        viewColor.addSubview(iconImageView)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            iconImageView.centerXAnchor.constraint(equalTo: viewColor.centerXAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: viewColor.centerYAnchor)
        ])
    }

    func addLeftStackView() {
        cardView.addSubview(leftStackView)
        leftStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            leftStackView.centerYAnchor.constraint(equalTo: viewColor.centerYAnchor),
            leftStackView.leftAnchor.constraint(equalTo: viewColor.rightAnchor, constant: 8)
        ])
    }

    func addRightStackView() {
        cardView.addSubview(rightStackView)
        rightStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            rightStackView.centerYAnchor.constraint(equalTo: viewColor.centerYAnchor),
            rightStackView.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: -8)
        ])
    }

}
