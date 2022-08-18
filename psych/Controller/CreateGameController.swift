//
//  CreateGameController.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import UIKit

class CreateGameController: UIViewController {

    //MARK: - properties
    private let label: UILabel = {
       let label = UILabel()
        
        return label
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - selectors
    
    
    //MARK: - Helpers
    func configureUI(){
        
        view.backgroundColor = .systemPink
        
    }

}
