//
//  Constants.swift
//  Module12
//
//  Created by Andrey Zharov on 15.12.2022.
//

import UIKit


enum Constants {
    enum Colors {
        static var redPrimary: UIColor? {
            UIColor(named: "RedPrimary")
        }
        
        static var pinkSecondary: UIColor? {
            UIColor(named: "PinkSecondary")
        }
    }
    
    enum Fonts {
        static var  ui14SemiBold: UIFont? {
            UIFont(name: "Inter-SemiBold", size: 30)
        }
        
        static var systemHading: UIFont {
            UIFont.systemFont(ofSize: 35, weight: .semibold)
        }
        
        static var ui30Regular: UIFont {
            UIFont.systemFont(ofSize: 16, weight: .bold)
        }
    }
    
    enum Text {
        static let heading = Bundle.main.localizedString(forKey: "Heading", value: "", table: "Localizable")
        static let text1 = Bundle.main.localizedString(forKey: "Text1", value: "", table: "Localizable")
        static let text2 = Bundle.main.localizedString(forKey: "Text2", value: "", table: "Localizable")
        
    }
    
    enum Image {
        static let star = UIImage(named: "star")
    }
}
