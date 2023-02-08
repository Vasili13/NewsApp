//
//  LoginViewController.swift
//  NewsApp
//
//  Created by Василий Вырвич on 8.02.23.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    lazy var nameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Name"
        field.borderStyle = .roundedRect
        return field
    }()
    
    lazy var surnameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Surname"
        field.borderStyle = .roundedRect
        return field
    }()
    
    lazy var logInbutton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .systemBlue
        btn.setTitle("Log In", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(logIn), for: .touchUpInside)
        btn.layer.cornerRadius = 15
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(surnameTextField)
        view.addSubview(nameTextField)
        view.addSubview(logInbutton)
        
        updateViewConstraints()
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        nameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(100)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        surnameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nameTextField).offset(50)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        logInbutton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(surnameTextField).offset(50)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
    }
    
    @objc func logIn() {
        print("tap log")
    }
    
    deinit {
        print("deinit loginVC")
    }
}
