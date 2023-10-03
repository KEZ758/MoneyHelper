//
//  TabBarController.swift
//  MoneyController
//
//  Created by Ерхан on 03.10.2023.


import UIKit

enum Tabs: Int {
    case transactions
    case statistics
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let transactionsController = TransactionsViewController()
        let statisticsController = StatisticsViewController()
        let settingsController = SettingsViewController()
        
        let transactionsNavigation = UINavigationController(rootViewController: transactionsController)
        let statisticsNavigation = UINavigationController(rootViewController: statisticsController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        transactionsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.transactions,
                                                     image: Resources.Images.TabBar.transactions,
                                                     tag: Tabs.transactions.rawValue)
        statisticsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.statistics,
                                                     image: Resources.Images.TabBar.statistics,
                                                     tag: Tabs.statistics.rawValue)
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([transactionsNavigation, statisticsNavigation, settingsNavigation], animated: false)
        
    }
}
