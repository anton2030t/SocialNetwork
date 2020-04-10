//
//  UserViewController.swift
//  myApp
//
//  Created by Антон Ларченко on 09.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = user.name
        cityLabel.text = user.city
        imageView.image = user.image

        imageView.layer.borderWidth = 3
        
        if user.gender == .male {
            imageView.layer.borderColor = UIColor.blue.cgColor
        } else {
            imageView.layer.borderColor = UIColor.red.cgColor
        }

    }

}
