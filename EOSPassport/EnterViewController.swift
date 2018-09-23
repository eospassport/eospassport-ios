//
//  EnterViewController.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

class EnterViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func nextTouchUpInside(_ sender: Any) {
        showPassport()
    }
    
    private func showPassport() {
        let passportVC = PassportViewController()
        navigationController?.pushViewController(passportVC, animated: true)
    }
    
    // MARK: - Navigation Item
    
    private func setupNavigationItem() {
        navigationItem.title = "EOS Passport"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passwordTextField.becomeFirstResponder()
    }
}
