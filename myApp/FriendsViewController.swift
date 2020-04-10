//
//  FriendsViewController.swift
//  myApp
//
//  Created by Антон Ларченко on 08.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellID = "UserTableViewCell"
    var userModel = UserModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = userModel.users[section]
        return section.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return userModel.users.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Мужчины"
        } else {
            return "Женщины"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        let section = userModel.users[indexPath.section]
        let user = section[indexPath.row]
        
        cell.nameLabel.text = user.name
        cell.userImageView.image = user.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = userModel.users[indexPath.section]
        let user = section[indexPath.row]
        
        let alert = UIAlertController(title: user.name, message: user.city, preferredStyle: .actionSheet)
        let profileAction = UIAlertAction(title: "Профиль", style: .default) { (alert) in
            self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
        }
        
        let deleteAction = UIAlertAction(title: "Удалить из друзей", style: .destructive) { (alert) in
            self.userModel.users[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData()
        }
        alert.addAction(profileAction)
        alert.addAction(deleteAction)
        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToProfile" {
            let vc = segue.destination as! UserViewController
            let indexPath = sender as! IndexPath
            let section = userModel.users[indexPath.section]
            let user = section[indexPath.row]
            vc.user = user
        }
    }
}
