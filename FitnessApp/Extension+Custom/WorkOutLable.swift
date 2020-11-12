//
//  WorkOutLable.swift
//  FitnessApp
//
//  Created by Ashish Patel on 11/11/20.
//

import UIKit

class WorkOutLable: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        adjustsFontSizeToFitWidth = true
        font = .boldSystemFont(ofSize: 32)
        textColor = .black
    }
   override func draw(_ rect: CGRect) {
       let inset = UIEdgeInsets(top: -2, left: 20, bottom: -2, right: 20)
       super.drawText(in: rect.inset(by: inset))
   }
    
}
