//
//  LeftMenuListViewController.swift
//  SplitViewController
//
//  Created by 朱晓瑾 on 2022/6/20.
//

import UIKit

protocol LeftMenuListViewControllerDelegate: AnyObject {
    func dismissLeftMenu(sender: UIButton)
}

class LeftMenuListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .clear
    }
    
    weak var delegate: LeftMenuListViewControllerDelegate?
    
    @IBAction func dismissView(_ sender: UIButton) {
        delegate?.dismissLeftMenu(sender: sender)
    }

}
