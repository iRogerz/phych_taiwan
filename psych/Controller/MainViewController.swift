//
//  MainViewController.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/3.
//

import UIKit
import FirebaseFirestore


class MainViewController: UIViewController {
    

    //MARK: - properties
    
    let pofileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "square.and.arrow.up.circle.fill"))
        imageView.layer.cornerRadius = 100
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    private lazy var joinGameButton: UIButton = {
        let button = Utilities().templateButton(title: "Join Game", color: .systemBlue)
        button.addTarget(self, action: #selector(handleJoinGame), for: .touchUpInside)
        return button
    }()
    private lazy var createGameButton: UIButton = {
        let button = Utilities().templateButton(title: "Create Game", color: .systemGreen)
        button.addTarget(self, action: #selector(handleCreateGame), for: .touchUpInside)
        return button
    }()
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateNadConfigure()
//        configureUI()
        
    }
    
    //MARK: - selectors
    @objc func handleTappedList(){
        
    }
    
    @objc func handleJoinGame(){
        let join = JoinController()
        let nav = UINavigationController(rootViewController: join)
        present(nav, animated: true)
    }
    
    @objc func handleCreateGame(){

    }
    
    //MARK: - Helpers
    func authenticateNadConfigure(){
        if User.shared.name == nil{
            DispatchQueue.main.async{
                let vc = LoginViewController()
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
        }else{
           configureUI()
        }
    }
    func configureUI(){
        configureNavigation()
        
        view.backgroundColor = .white
        
        view.addSubview(pofileImageView)
        pofileImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.width.height.equalTo(200)
        }
        
        let stack = UIStackView(arrangedSubviews: [joinGameButton, createGameButton])
        stack.axis = .vertical
        stack.spacing = 12
        view.addSubview(stack)
        
        stack.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.equalTo(200)
        }
        
    }
    
    func configureNavigation(){
        //預設navigationbar的scrollEdgeAppearance是nil,所以會是透明的，下方改成毛玻璃效果
        
        navigationController?.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "list.bullet.circle"), style: .plain, target: self, action: #selector(handleTappedList))
        //        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: pofileImageView)
    }
    
}

