//
//  NiuniuCardCollectionViewCell.swift
//  WDRxSwiftDemo
//
//  Created by 吴迪玮 on 16/3/8.
//  Copyright © 2016年 DNT. All rights reserved.
//

import UIKit

class NiuniuCardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cardBgImageView: UIImageView!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var suitLabel: UILabel!
    
    var model:NiuniuCard? {
        didSet{
            rankLabel.text = "\(model!.rank.rawValue)"
            suitLabel.text = "\(model!.suit.rawValue)"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
