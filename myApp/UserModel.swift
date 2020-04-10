//
//  UserModel.swift
//  myApp
//
//  Created by Антон Ларченко on 08.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class UserModel {
    var users = [[User]]()
    
    init() {
        setup()
    }
    
    func setup() {
        let man1 = User(coordinate: CLLocationCoordinate2D(latitude: 37.765834, longitude: -122.403417), name: "Николай", city: "Москва", image: UIImage(imageLiteralResourceName: "man1"), gender: .male)
        let man2 = User(coordinate: CLLocationCoordinate2D(latitude: 37.762834, longitude: -122.401417), name: "Алексей", city: "Калининград", image: UIImage(imageLiteralResourceName: "man2"), gender: .male)

        let manArray = [man1, man2]
        
        let woman1 = User(coordinate: CLLocationCoordinate2D(latitude: 37.715834, longitude: -122.103417), name: "Катрин", city: "Екатеринбург", image: UIImage(imageLiteralResourceName: "woman1"), gender: .female)
        let woman2 = User(coordinate: CLLocationCoordinate2D(latitude: 37.695834, longitude: -122.393417), name: "Мария", city: "Ярославль", image: UIImage(imageLiteralResourceName: "woman2"), gender: .female)

        let womanArray = [woman1, woman2]
        
        users.append(manArray)
        users.append(womanArray)
    }
}
