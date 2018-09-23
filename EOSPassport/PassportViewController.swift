//
//  PassportViewController.swift
//  EOSPassport
//
//  Created by Vitaly Berg on 23/09/2018.
//  Copyright © 2018 Vitaly Berg. All rights reserved.
//

import UIKit

class PassportViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func trash() {
        let data: [String: Any] = ["table": "profile", "scope": "testcont22", "code": "testcont22", "limit": 10, "json": true]
        
        var request = URLRequest(url: URL(string: "http://jungle.cryptolions.io:18888/v1/chain/get_table_rows")!)
        request.httpMethod = "POST"
        request.httpBody = try! JSONSerialization.data(withJSONObject: data)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print(data)
            print(response)
            print(error)
            let json = try! JSONSerialization.jsonObject(with: data!)
            print(json)
        }
        task.resume()
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        } else {
            return 1
        }
    }
    
    func title(for index: Int) -> String {
        return [
            "Personal Details",
            "Birth Date",
            "Phone Number",
            "Email Address"
            ][index]
    }
    
    func subtitle(for index: Int) -> String {
        return [
            "Vitaly Berg",
            "19 June 1990",
            "+7 925 528-90-25",
            "bergusman@gmail.com"
            ][index]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "record")
            if cell == nil {
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: "record")
            }
            
            cell!.textLabel?.text = title(for: indexPath.row)
            cell!.detailTextLabel?.text = subtitle(for: indexPath.row)
            cell!.detailTextLabel?.textColor = .gray
            cell?.accessoryType = .disclosureIndicator
   
            return cell!
        } else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "delete")
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: "delete")
            }
            
            cell!.textLabel?.text = "Delete EOS Passport"
            cell!.textLabel?.textColor = .red
            cell!.textLabel?.textAlignment = .center
            
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Passport Information"
        }
        return nil
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            if indexPath.section == 0 {
                let personalVC = PersonalViewController()
                navigationController?.pushViewController(personalVC, animated: true)
            } else if indexPath.section == 1 {
                let birthVC = BirthViewController()
                navigationController?.pushViewController(birthVC, animated: true)
            } else if indexPath.section == 2 {
                let phoneVC = PhoneViewController()
                navigationController?.pushViewController(phoneVC, animated: true)
            } else if indexPath.section == 3 {
                let emailVC = EmailViewController()
                navigationController?.pushViewController(emailVC, animated: true)
            }
        } else {
            tryDelete()
        }
    }
    
    // MARK: -
    
    private func tryDelete() {
        let message = "Are you sure you want to delete your EOS Passport? All data will be lost."
        let alertVC = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        alertVC.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (action) in
            self.delete()
        }))
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertVC, animated: true)
    }
    
    private func delete() {
        
    }
    
    // MARK: - Navigation Item
    
    private func setupNavigationItem() {
        navigationItem.title = "EOS Passport"
    }
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
        trash()
    }
}
