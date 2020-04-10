//
//  FullScreenCollectionViewCell.swift
//  myApp
//
//  Created by Антон Ларченко on 08.04.2020.
//  Copyright © 2020 Anton Larchenko. All rights reserved.
//

import UIKit

class FullScreenCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3.5
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoView
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollView.zoomScale = 1
    }

}
