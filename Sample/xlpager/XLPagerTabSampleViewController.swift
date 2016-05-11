//
//  XLPagerTabSampleViewController.swift
//  Sample
//
//  Created by mineharu on 2016/03/29.
//  Copyright © 2016年 Mineharu. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class XLPagerTabSampleViewController: ButtonBarPagerTabStripViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return [MyEmbeddedViewController(), MySecondEmbeddedViewController()]
    }
}

class MyEmbeddedViewController: UITableViewController, IndicatorInfoProvider {
    
    func indicatorInfoForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "My Child title")
    }
}
class MySecondEmbeddedViewController: UITableViewController, IndicatorInfoProvider {
    
    func indicatorInfoForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "My Child title2")
    }
}