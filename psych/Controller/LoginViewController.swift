//
//  LoginViewController.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import UIKit
import SwiftUI

class LoginViewController: UIViewController {
    
    //MARK: - properties
    let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "請輸入遊戲名稱"
        textField.backgroundColor = .lightGray
        //        textField.returnKeyType = .done
        //        textField.layer.cornerRadius = 5
        return textField
    }()
    let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .red
        return label
    }()
    
    private lazy var submitButton: UIButton = {
        let button = Utilities().templateButton(title: "確認", color: .systemBlue)
        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return button
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - selectors
    @objc func handleSubmit(){
        guard let text =  textField.text, !text.isEmpty else {
            label.text = "請輸入玩家名稱"
            return
        }
        
        guard text.count > 3 else{
            label.text = "長度需大於四個字"
            return
        }
        
        guard let mainVC = view.window?.windowScene?.keyWindow?.rootViewController as? MainViewController else { return }
        mainVC.authenticateNadConfigure()
        dismiss(animated: true)
    }
    
    //MARK: - Helpers
    func configureUI(){
        
        view.backgroundColor = .white
        
        let stack = UIStackView(arrangedSubviews: [textField, label, submitButton])
        stack.axis = .vertical
        stack.spacing = 12
        view.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.width.equalTo(200)
        }
        
    }
    
}
