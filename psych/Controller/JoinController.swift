//
//  JoinController.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import UIKit

class JoinController: UIViewController {

    //MARK: - properties
    let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "請輸入房號"
        textField.backgroundColor = .lightGray
//        textField.returnKeyType = .done
//        textField.layer.cornerRadius = 5
        return textField
    }()
    
    private lazy var submitButton: UIButton = {
        let button = Utilities().templateButton(title: "Submit", color: .systemBlue)
        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return button
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - selectors
    @objc func handleDismissal(){
        dismiss(animated: true)
    }
    @objc func handleSubmit(){
        
    }
    
    //MARK: - Helpers
    func configureUI(){
        view.backgroundColor = .white
        navigationItem.title = "Join Game"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismissal))
        navigationItem.leftBarButtonItem?.tintColor = .systemBlue
        
//        view.addSubview(textField)
        let stack = UIStackView(arrangedSubviews: [textField, submitButton])
        stack.axis = .vertical
        stack.spacing = 12
        view.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
    }
}
