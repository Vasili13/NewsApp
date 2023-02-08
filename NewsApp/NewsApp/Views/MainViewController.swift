//
//  ViewController.swift
//  NewsApp
//
//  Created by Василий Вырвич on 2.02.23.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        convigurateNavBar()
    }

    private func convigurateNavBar() {
        title = "NewsApp"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle.fill.badge.plus"), style: .done, target: self, action: #selector(onButtonTapped))
//        navigationItem.rightBarButtonItem?.tintColor = .black
        navigationItem.rightBarButtonItem?.title = "Log In"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log In", style: .done, target: self, action: #selector(onButtonTapped))
    }

    @objc func onButtonTapped() {
        print("tap")
    }
    
    deinit {
        print("deinit MainVC")
    }
}

