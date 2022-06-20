//
//  LeftMenuListViewController.swift
//  SplitViewController
//
//  Created by 朱晓瑾 on 2022/6/20.
//

import UIKit

class LeftMenuListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .clear
    }
    
    @IBAction func dismissView(_ sender: UIButton) {
        let navigationController = splitViewController?.viewControllers.last as? UINavigationController
        let tabBarViewController = navigationController?.topViewController as? UITabBarController
        let mailListViewController = tabBarViewController?.children[0] as? MailListViewController
        splitViewController?.showDetailViewController(mailListViewController!, sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
