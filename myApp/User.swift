//
//  User.swift
//  myApp
//
//  Created by Антон Ларченко on 08.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import Foundation
import UIKit
import MapKit

enum Gender {
    case male
    case female
}

class User: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var name: String
    var city: String
    var image: UIImage
    var gender: Gender
    var title: String? {
        return name
    }
    
    init(coordinate: CLLocationCoordinate2D, name: String, city: String, image: UIImage, gender: Gender) {
        self.coordinate = coordinate
        self.name = name
        self.city = city
        self.image = image
        self.gender = gender
    }
}
