//
//  CollectionViewCell.swift
//  genkouyoushi
//
//  Created by Yo Higashida on 2021/11/04.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //cellの枠の太さ
        self.layer.borderWidth = 1
        //cellの枠の色
        self.layer.borderColor = #colorLiteral(red: 0.893630445, green: 0.8950561881, blue: 0.8464159369, alpha: 1)
    }
}
