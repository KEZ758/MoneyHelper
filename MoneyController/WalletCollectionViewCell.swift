//
//  WalletCollectionViewCell.swift
//  MoneyController
//
//  Created by Ерхан on 23.10.2023.
//

import UIKit

class WalletCollectionViewCell: UICollectionViewCell {
    private var backImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 14
        image.clipsToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    private var imageCard: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    
    private var totalBalance: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private var cardOrCachLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    private var balance: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setup(){
        contentView.addSubview(backImage)
        contentView.addSubview(totalBalance)
        contentView.addSubview(imageCard)
        contentView.addSubview(balance)
        contentView.addSubview(cardOrCachLabel)
        
        
        
        NSLayoutConstraint.activate([
            backImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -16),
            backImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 23),
            backImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -16),
            backImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 16),
            
            totalBalance.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            totalBalance.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            imageCard.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 22),
            imageCard.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            imageCard.heightAnchor.constraint(equalToConstant: 24),
            imageCard.widthAnchor.constraint(equalToConstant: 24),
            
            balance.topAnchor.constraint(equalTo: totalBalance.bottomAnchor, constant: 8),
            balance.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            
            cardOrCachLabel.topAnchor.constraint(equalTo: balance.bottomAnchor, constant: 14),
            cardOrCachLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12)
            
        ])
        
    }
    
    func setImage(image: WalletModel) {
        backImage.image = image.cardImage
        imageCard.image = image.iconImage
        totalBalance.text = image.totalBalance
        balance.text = ("\(image.balance)")
        cardOrCachLabel.text = image.bankNameOrCache
    }
    
    
}
