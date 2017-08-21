//
//  TQNavigationHelper.swift
//  Trular
//
//  Created by Shivapurapu Mahendra on 29/05/17.
//  Copyright © 2017 Indus Net Technologies. All rights reserved.
//

import UIKit


class   TQNavigationHelper: NSObject {
    
    static let sharedInstance = TQNavigationHelper()
    
    var loginContainerNavigation: UINavigationController!
    var navigationController: UINavigationController!
    
    var contentMainNavVC: TQContentNavigationVC!
    var mainContainerMainVC: TQContainerVC?
    
    var LeaderboardContentNavVC: UINavigationController!
    
    var SettingsTermsNavVC: UINavigationController!
    var settingsContentNavVC: UINavigationController!
    
    //MARK:- CURRENT VIEW CONTROLLER
    func currentViewController() -> UIViewController {
        return self.contentMainNavVC.viewControllers.last!
    }
    
    //MARK:- PUSH VIEW CONTROLLER
 
}
