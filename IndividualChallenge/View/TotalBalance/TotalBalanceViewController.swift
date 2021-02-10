//
//  ViewController.swift
//  IndividualChallenge
//
//  Created by Lucas Oliveira on 09/02/21.
//

import UIKit

class TotalBalanceViewController: UITableViewController {

    let test = [Goal(image: Data(), colorHexCode: "", name: "Viagem para Inglaterra",
                     targetPrice: 100, currentPrice: 10, deadline: Date()),
                Goal(image: Data(), colorHexCode: "", name: "Viagem para Inglaterra",
                     targetPrice: 100, currentPrice: 10, deadline: Date()),
                Goal(image: Data(), colorHexCode: "", name: "Viagem para Inglaterra",
                     targetPrice: 100, currentPrice: 10, deadline: Date())]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        setupTableView()
        setupNavigationBar()
        // Do any additional setup after loading the view.
    }

    func setupNavigationBar() {
        let addButton = UIBarButtonItem(systemItem: .add)
        addButton.style = .done
        addButton.tintColor = UIColor.purple

        navigationItem.rightBarButtonItem = addButton

        navigationController?.navigationBar.barTintColor = .background
        navigationController?.navigationBar.shadowImage = UIImage()
    }

    func setupTableView() {
        tableView.allowsSelection = true
        tableView.separatorStyle = .none
    }

}

extension TotalBalanceViewController {

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return TotalBalanceTableViewHeader(balance: 200, reuseIdentifier: "lucas")
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 98
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = GoalTotalBalanceViewModel(goal: test[indexPath.row])

        let cell = GoalTotalBalanceTableViewCell()

        cell.clipsToBounds = false

        cell.viewModel = viewModel
        
        return cell
    }
}
