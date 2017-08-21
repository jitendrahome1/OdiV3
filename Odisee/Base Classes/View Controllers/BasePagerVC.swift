//
//  BasePagerVC.swift
//  Odisee
//
//  Created by Jitendra on 20/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class BasePagerVC: ButtonBarPagerTabStripViewController {
    //MARK:- Pager Properties
    var barHeight : CGFloat? {
        
        didSet {
            settings.style.selectedBarHeight = barHeight!
            settings.style.buttonBarHeight = barHeight!
        }
    }
    
    var pagerShouldScroll : Bool? {
        
        didSet {
            containerView.isScrollEnabled = pagerShouldScroll!
        }
    }
    var viewControllersForPager: [UIViewController]?
    
    var barColor:UIColor = UIColor.colorWithHexString("#404041")
    var selectedTextColor:UIColor = UIColor.colorWithHexString("#404041")
    var textColor:UIColor = .lightGray

    override func viewDidLoad() {
        initPagerSettings(barColor: barColor,selectedTextColor: selectedTextColor,textColor: textColor)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    //MARK:- Pager Settings
    func initPagerSettings(barColor:UIColor,selectedTextColor:UIColor,textColor:UIColor) {
        
        settings.style.buttonBarBackgroundColor = .clear
        settings.style.buttonBarItemBackgroundColor = .clear
        
        settings.style.selectedBarBackgroundColor =  barColor
        settings.style.selectedBarHeight = 0.5
        
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        self.pagerBehaviour = .progressive(skipIntermediateViewControllers: false, elasticIndicatorLimit: false)
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            
            self.settings.style.selectedBarBackgroundColor = barColor
            
           oldCell?.label.textColor = textColor
          oldCell?.label.font = UIFont.init(name: "HelveticaNeue-Regular", size: 7.0)
            newCell?.label.textColor = selectedTextColor
            newCell?.label.font = UIFont.init(name: "HelveticaNeue-Regular", size: 7.0)
        }
    }
}
