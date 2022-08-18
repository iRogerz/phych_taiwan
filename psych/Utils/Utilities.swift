//
//  Utilities.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import UIKit

class Utilities{
    
    func templateButton(title: String, color: UIColor) -> UIButton{
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.borderWidth = 2
        button.layer.borderColor = color.cgColor
        button.layer.cornerRadius = 5
        return button
    }
}
