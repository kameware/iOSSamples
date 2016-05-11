//
//  HideScrollBarViewController.swift
//  Sample
//
//  Created by mineharu on 2016/04/27.
//  Copyright © 2016年 Mineharu. All rights reserved.
//

import UIKit

class HideScrollBarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = indexPath.row.description
        
        return cell
    }
    
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if velocity.y > 0 {
        } else {
            
        }
    }
    
    // MARK: self method
    func hidesBarsWIthScrollView(scrollView: UIScrollView, hidden: Bool, hiddenTop: Bool) {
        let inset: UIEdgeInsets = scrollView.contentInset
        var topBarRect = self.navigationController?.navigationBar.frame
        let naviBarHeight: Float = self.navigationController?.navigationBar.frame.size.height
        let statusBarHeight: Float = UIApplication.sharedApplication().statusBarFrame.size.height
        
        if (hidden) {
            if (hiddenTop) {
                topBarRect?.origin.y -= (naviBarHeight + statusBarHeight)
                insets.top
            }
        }
    }

}
