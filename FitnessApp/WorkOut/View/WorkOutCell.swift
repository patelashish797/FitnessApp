//
//  WorkOutCell.swift
//  FitnessApp
//
//  Created by Ashish Patel on 11/11/20.
//

import UIKit

class WorkOutCell: UITableViewCell {
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var titleLable: WorkOutLable = {
        let view = WorkOutLable()
        view.text = "My Custom WorkOut 💪"
        return view
    }()
    
    lazy var subTitleLable: WorkOutLable = {
        let view = WorkOutLable()
        view.text = "⌚️ 20 min 30 sec"
        return view
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        selectionStyle = .none
        backgroundColor = .clear
        addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
        ])
        containerView.addSubview(titleLable)
        NSLayoutConstraint.activate([
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            titleLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
        ])
        containerView.addSubview(subTitleLable)
        NSLayoutConstraint.activate([
            subTitleLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 5),
            subTitleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            subTitleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            subTitleLable.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }
    
}
