//
//  ViewController.swift
//  Greener
//
//  Created by Calia Park on 2023/11/06.
//

import UIKit

final class ViewController: UIViewController {
    
    // 메인 레이블
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Green:er"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 36)
        label.frame.size.height = 40
        label.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        return label
    }()
    
    // 이름 텍스트필드 뷰
    private lazy var nameTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        view.frame.size.height = 40
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        view.addSubview(nameTextField)
//        view.addSubview(nameInfoLabel)
        return view
    }()
    
    // "이름 또는 닉네임 입력" 안내문구
//    private let nameInfoLabel: UILabel = {
//        let label = UILabel()
//        label.text = "이름 또는 닉네임 입력"
//        label.textAlignment = .center
//        label.font = UIFont.systemFont(ofSize: 18)
//        label.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
//        return label
//    }()
    
    // 이름 입력 필드
    private lazy var nameTextField: UITextField = {
        var tf = UITextField()
        tf.frame.size.height = 40
        tf.backgroundColor = .clear
        tf.placeholder = "이름 또는 이메일 입력"
        tf.textColor = .black
        tf.tintColor = .black
        tf.textAlignment = .center
        tf.autocapitalizationType = .none
        tf.clearButtonMode = .always
        tf.keyboardType = .default
        //        tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        return tf
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        button.layer.cornerRadius = 6
        button.frame.size.height = 40
        button.setTitle("시작하기", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.isEnabled = false
        //        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    // 메인레이블, 이름 텍스트필드 뷰, 시작하기 버튼을 스택뷰에 배치
    private lazy var stackView: UIStackView = {
        let stview = UIStackView(arrangedSubviews: [mainLabel, nameTextFieldView, startButton])
        stview.spacing = 18
        stview.axis = .vertical
        stview.distribution = .fillEqually
        stview.alignment = .fill
        return stview
    }()
    
    private let textViewHeight: CGFloat = 40
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setupAutoLayout()
        
    }
    
    private func configure() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        nameTextField.delegate = self
        view.addSubview(stackView)
    }
    
    private func setupAutoLayout() {
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        nameTextFieldView.translatesAutoresizingMaskIntoConstraints = false
//        nameInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
//            nameInfoLabel.leadingAnchor.constraint(equalTo: nameTextFieldView.leadingAnchor, constant: 8),
//            nameInfoLabel.trailingAnchor.constraint(equalTo: nameTextFieldView.trailingAnchor, constant: -8),
//            nameInfoLabel.centerYAnchor.constraint(equalTo: nameTextFieldView.centerYAnchor),
        
            
            
            nameTextField.centerYAnchor.constraint(equalTo: nameTextFieldView.centerYAnchor),
            nameTextField.leadingAnchor.constraint(equalTo: nameTextFieldView.leadingAnchor, constant: 8),
            nameTextField.trailingAnchor.constraint(equalTo: nameTextFieldView.trailingAnchor, constant: -8),
            
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: textViewHeight*3 + 36)
        ])
        
    }
}
    
