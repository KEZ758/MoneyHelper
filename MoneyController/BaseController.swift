//
//  BaseController.swift
//  MoneyController
//
//  Created by Ерхан on 18.11.2023.
//

import UIKit

class BaseController: UIViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension BaseController {
    //MARK: - ViewDidLoad
    func setupViews() {}
    func constraintViews() {}
    func configureAppearance() {
        view.backgroundColor = .white
    }
    //MARK: - ViewWillAppear
    func fetchData() {}
}


