//
//  Resources.swift
//  MoneyController
//
//  Created by Ерхан on 03.10.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#8557A0")
        static var inactive = UIColor(hexString: "#A0A0A0")
        
        static var separator = UIColor(hexString: "#E9E9E9")
        static var firstVC = UIColor(hexString: "#6541A0")
        static var stackViewLabel = UIColor(hexString: "#2836B5")
        static var stackViewLabel2 = UIColor(hexString: "#838486")
        static var backPage = UIColor(hexString: "#F3F3F3")
        
        
        static var viewLabelsColor = UIColor(hexString: "#707070")
        
        
        
        static var saveProgressPurple = UIColor(hexString: "#8557A0")
        static var saveProgressSilver = UIColor(hexString: "#F3F3F3")
    }
    
    enum Strings {
        enum TabBar{
            static var transactions = ""
            static var statistics = ""
            static var settings = ""
        }
    }
    
    enum Images{
        enum TabBar{
            static var transactions = UIImage(named: "Wallet_alt_fill")
            static var statistics = UIImage(named: "Chart")
            static var settings = UIImage(named: "Frame")
        }
    }
    
    enum FirstVCImages{
        enum BackImages{
            static var backImage = UIImage(named: "back")
            static var walletBackImage = UIImage(named: "walletBack")
        }
        
        
        
        enum IconImage{
            static var icon = UIImage(named: "Icon")
        }
        enum ButtonImages{
            static var navigationImage = UIImage(named: "plus")
        }
        
    }
    
    
}
