//
//  ImageCollectionViewCell.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/30.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func generateImageWith(itemImage: UIImage) {
        imageView.image = itemImage
    }
}
