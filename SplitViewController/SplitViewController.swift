//
//  SplitViewController.swift
//  SplitViewController
//
//  Created by 朱晓瑾 on 2022/6/20.
//

import UIKit

class SplitViewController: UISplitViewController, LeftMenuListViewControllerDelegate {
    func dismissLeftMenu(sender: UIButton) {
        print("lalala")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let leftMenuListViewController = storyboard.instantiateViewController(withIdentifier: "LeftMenuListViewController") as! LeftMenuListViewController
        leftMenuListViewController.delegate = self
    }
}

//extension UISplitViewController {
//    func toggleMasterView() {
//        let barButtonItem = self.displayModeButtonItem
//        UIApplication.shared.sendAction(barButtonItem.action!, to: barButtonItem.target, from: nil, for: nil)
//    }
//}
