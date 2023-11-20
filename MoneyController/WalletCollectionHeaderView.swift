//
//  WalletCollectionHeaderView.swift
//  MoneyController
//
//  Created by Ерхан on 16.11.2023.
//

import UIKit

protocol WalletsHeaderViewDelegate: AnyObject {
    func didSignUpBtnTapped()
}

final class WalletsHeaderView: BaseView {
    
    weak var delegate: WalletsHeaderViewDelegate?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Wallets"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let seeAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.addTarget(WalletsHeaderView.self, action: #selector(signUpBtnHandler), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
    @objc private func seeAllButtonTapped() {
        
    }

   
}

extension WalletsHeaderView {
    override func setupViews() {
        super.setupViews()
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(seeAllButton)
        
    }
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),

            seeAllButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            seeAllButton.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        
    }
}
extension WalletsHeaderView {
    @objc func signUpBtnHandler() {
        delegate?.didSignUpBtnTapped()
    }
}
