//
//  WorkOutVC.swift
//  FitnessApp
//
//  Created by Ashish Patel on 11/10/20.
//

import UIKit

final class WorkOutVC: UIViewController {
    
    var safeArea: UILayoutGuide!
    
    lazy var tableview: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.delegate = self
        view.dataSource = self
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        navigationItem.title = "Workouts"
        setupViews()
    }
    
    private func setupViews() {
        view.addSubview(tableview)
        NSLayoutConstraint.activate([
            tableview.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            tableview.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 16),
            tableview.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
    }

}

extension WorkOutVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = WorkOutCell()
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }

}

