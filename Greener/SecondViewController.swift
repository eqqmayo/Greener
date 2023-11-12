//
//  SecondViewController.swift
//  Greener
//
//  Created by CaliaPark on 2023/11/12.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String?

    var mainLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = UIColor.black
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        configureUI()
    }
    
    
    func configureUI() {
        
        view.addSubview(mainLabel)
        
        // 레이블 오토레이아웃
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true

        guard let name = name else { return }
        mainLabel.text = "\(name)의 정원 🌱"
        
    }
}
