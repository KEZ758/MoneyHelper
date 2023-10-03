//
//  WalletCollectionHeaderView.swift
//  MoneyController
//
//  Created by Ерхан on 16.11.2023.
//

import UIKit


class WalletsHeaderView: UICollectionReusableView {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()

    let seeAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.addTarget(WalletsHeaderView.self, action: #selector(seeAllButtonTapped), for: .touchUpInside)
        return button
    }()

    // Добавьте необходимые действия для кнопки, например, переход к другому экрану
    @objc private func seeAllButtonTapped() {
        // Ваш код для обработки нажатия кнопки "See All"
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }

    private func setupUI() {
        // Настройка UI вашего заголовка, располагая titleLabel и seeAllButton справа от него
        addSubview(titleLabel)
        addSubview(seeAllButton)

        // Добавьте необходимые Auto Layout ограничения
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        seeAllButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),

            seeAllButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            seeAllButton.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
}
