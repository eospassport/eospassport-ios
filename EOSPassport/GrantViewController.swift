//
//  GrantViewController.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

class GrantViewController: UIViewController {
    
    @IBAction func authTouchUpInside(_ sender: Any) {
        dismiss(animated: true)
        UIApplication.shared.open(URL(string: "tvbox://")!, options: [:])
    }
    
    // MARK: - Navigation Item
    
    private func setupNavigationItem() {
        navigationItem.title = "EOS Passport"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelAction))
    }
    
    @objc private func cancelAction() {
        dismiss(animated: true)
    }

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
    }
}
