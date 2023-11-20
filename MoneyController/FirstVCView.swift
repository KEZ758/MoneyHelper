//
//  FirstVCView.swift
//  MoneyController
//
//  Created by Ерхан on 28.10.2023.
//

import UIKit

final class FirstVCView: BaseView {
    
    
    
    
    private var monthBudget: UILabel = {
        let label = UILabel()
        label.text = "January budget"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return label
    }()
    
    private var reMoney: UILabel = {
        let label = UILabel()
        label.text = "$ 480"
        label.textColor = Resources.Colors.stackViewLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    private var monthMoney: UILabel = {
        let label = UILabel()
        label.text = "/ $820"
        label.textColor = Resources.Colors.stackViewLabel2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    
    private var percent: UILabel = {
        let label = UILabel()
        label.text = "64%"
        label.textColor = Resources.Colors.viewLabelsColor
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    
    private var progressView: UIProgressView = {
       let saveProgressView = UIProgressView(progressViewStyle: .default)
        
        saveProgressView.progress = 0.64
        saveProgressView.translatesAutoresizingMaskIntoConstraints = false
        saveProgressView.progressTintColor = Resources.Colors.saveProgressPurple
        saveProgressView.trackTintColor = Resources.Colors.saveProgressSilver
        return saveProgressView
    }()
    
    
    
    private var dailyBudget: UILabel = {
        let label = UILabel()
        label.text = "Daily budget - ($26.45 - 45.33)"
        label.textColor = Resources.Colors.viewLabelsColor
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        return label
    }()
    
    private var daysLegt: UILabel = {
        let label = UILabel()
        label.text = "19 days left"
        label.textColor = Resources.Colors.viewLabelsColor
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        return label
    }()
}

extension FirstVCView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(monthBudget)
        addSubview(reMoney)
        addSubview(monthMoney)
        addSubview(percent)
        addSubview(progressView)
        addSubview(dailyBudget)
        addSubview(daysLegt)
    }
    override func constraintViews() {
        super.constraintViews()
        
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            monthBudget.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            monthBudget.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            
            reMoney.topAnchor.constraint(equalTo: monthBudget.bottomAnchor, constant: 8),
            reMoney.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            
            monthMoney.topAnchor.constraint(equalTo: monthBudget.bottomAnchor, constant: 12),
            monthMoney.leadingAnchor.constraint(equalTo: reMoney.trailingAnchor, constant: 0),
            
            
            
            percent.topAnchor.constraint(equalTo: monthBudget.bottomAnchor, constant: 12),
            percent.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            progressView.topAnchor.constraint(equalTo: monthMoney.bottomAnchor, constant: 11),
            progressView.heightAnchor.constraint(equalToConstant: 4),
            
            dailyBudget.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            dailyBudget.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 8),
            
            daysLegt.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            daysLegt.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 8)
            
            
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .white
        layer.cornerRadius = 9
        
    }
}
