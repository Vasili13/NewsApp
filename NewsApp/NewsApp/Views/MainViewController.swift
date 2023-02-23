//
//  ViewController.swift
//  NewsApp
//
//  Created by Василий Вырвич on 2.02.23.
//

import UIKit
import SwiftUI
import SnapKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var loginbtn: UIButton!
    
    lazy var newsTableView: UITableView = {
        let table = UITableView(frame: .zero)
        table.backgroundColor = .gray
        table.delegate = self
        table.dataSource = self
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(newsTableView)
        
        updateViewConstraints()
        
        convigurateNavBar()
    }
    
    override func updateViewConstraints() {
        newsTableView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalTo(loginbtn)
        }
        
        super.updateViewConstraints()
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
    
    @IBSegueAction func showUserProfileSegue(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: UserProfile())
    }
    
    deinit {
        print("deinit MainVC")
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        return UITableViewCell()
    }
}
