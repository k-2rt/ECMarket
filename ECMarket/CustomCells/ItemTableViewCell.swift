//
//  ItemTableViewCell.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/30.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func generateCell(_ item: Item) {
        nameLabel.text = item.name
        descriptionLabel.text = item.description
        priceLabel.text = convertToCurrency(item.price)
        priceLabel.adjustsFontSizeToFitWidth = true
        
        if item.imageLinks != nil && item.imageLinks.count > 0 {
            downloadImages(imageUrls: [item.imageLinks.first!]) { (images) in
                self.itemImageView.image = images.first as? UIImage
            }
        }
    }
}
