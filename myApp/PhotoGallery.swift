//
//  PhotoGallery.swift
//  myApp
//
//  Created by Антон Ларченко on 08.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import Foundation
import UIKit

class PhotoGallery {
    var images = [UIImage]()
    
    init() {
        setupGallery()
    }
    
    func setupGallery() {
        for i in 0...4 {
            let image = UIImage(named: "p\(i)")!
            images.append(image)
        }
    }
}
