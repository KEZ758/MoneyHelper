//
//  TransactionsViewController.swift
//  MoneyController
//
//  Created by Ерхан on 05.10.2023.
//

import UIKit

class TransactionsViewController: UIViewController {
    
    
    
    var dataImage = [
    "88",
    "88",
    "88",
    "88"
    ]
    
    var dataLabel = [
    "Total balance",
    "Total balance",
    "Total balance",
    "Total balance"
    ]
    
     let walletCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
         collectionView.backgroundColor = Resources.Colors.backPage
        return collectionView
    }()
    
    private let viewInfo = FirstVCView()
    
    private var actionBarTitle: UILabel {
        let title = UILabel()
        title.text = "Total Balance"
        title.textAlignment = .center
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 12)
        return title
    }
    private var totalBalance: UILabel {
        let balance = UILabel()
        balance.text = "$ 75,259"
        balance.textAlignment = .center
        balance.textColor = .white
        balance.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return balance
    }
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Resources.Colors.backPage
        
        createBackImage()
        
        createTitleStackView()
        
        createPlusButton()
        
        createiconButton()
        
        walletCollectionViewConstraint()
        
        viewInfoConfigure()
        walletCollectionView.dataSource = self
        walletCollectionView.delegate = self
        walletCollectionView.register(WalletCollectionViewCell.self, forCellWithReuseIdentifier: "WalletCollectionViewCell")
        
        
        

    }
    
    private func createBackImage (){
        let imageView = UIImageView()
        imageView.image = Resources.FirstVCImages.BackImages.backImage
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.contentMode = .scaleToFill
        
        view.addSubview(imageView)
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 159).isActive = true
        
    }
    private func createTitleStackView () {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(actionBarTitle)
        stackView.addArrangedSubview(totalBalance)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
                ])
    }
    
    private func createPlusButton() {
        
        let plusButton = UIButton()
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        plusButton.setBackgroundImage(Resources.FirstVCImages.ButtonImages.navigationImage, for: .normal)
        
        view.addSubview(plusButton)
       
        NSLayoutConstraint.activate([
            plusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            plusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            plusButton.widthAnchor.constraint(equalToConstant: 35),
            plusButton.heightAnchor.constraint(equalToConstant: 35)
        ])
        
    }
    
    private func createiconButton() {
        let iconButton = UIButton()
        iconButton.translatesAutoresizingMaskIntoConstraints = false
        iconButton.setBackgroundImage(Resources.FirstVCImages.IconImage.icon, for: .normal)
        
        view.addSubview(iconButton)
        
        NSLayoutConstraint.activate([
            iconButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            iconButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            iconButton.widthAnchor.constraint(equalToConstant: 42),
            iconButton.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
    
    private func walletCollectionViewConstraint() {
        
        
        
        view.addSubview(walletCollectionView)
        NSLayoutConstraint.activate([
            walletCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 238),
            walletCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            walletCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            walletCollectionView.heightAnchor.constraint(equalToConstant: 131)
        ])
    }
    
    private func viewInfoConfigure() {
        

        
        
        
        

        
        view.addSubview(viewInfo)
        
        
        
        

        NSLayoutConstraint.activate([
            viewInfo.topAnchor.constraint(equalTo: view.topAnchor, constant: 118),
            viewInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            viewInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),viewInfo.widthAnchor.constraint(equalToConstant: 358),
            viewInfo.heightAnchor.constraint(equalToConstant: 97)
        ])
        

        
        
    }
    


}

//MARK: - UICollectionDataSource

extension TransactionsViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Рассчитываем размер ячейки на основе контента
        return CGSize(width: 155, height: 97)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2) // Отступы от краев
//    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12 // Вертикальное расстояние между секциями
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WalletCollectionViewCell", for: indexPath) as! WalletCollectionViewCell
        
        cell.backImage.image = UIImage(named: dataImage[indexPath.row])
        cell.totalBalance.text = dataLabel[indexPath.row]
        return cell
    }
    
    
    
}
