//
//  WalletCollectionViewCell.swift
//  MoneyController
//
//  Created by Ерхан on 23.10.2023.
//

import UIKit

class WalletCollectionViewCell: UICollectionViewCell {
    var backImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 14
        image.clipsToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    private weak var imageCard: UIImageView!
    
    
    var totalBalance: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private weak var cardOrCachLabel: UILabel!
    private weak var balance: UILabel!
    
    
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
        
        
        NSLayoutConstraint.activate([
            backImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -16),
            backImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 23),
            backImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -16),
            backImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 16),
            
            totalBalance.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            totalBalance.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
        ])
        
    }
    
//    func setImage(image: UIImageView) {
//        self.backImage.image = image.image
//    }
    
    
}
