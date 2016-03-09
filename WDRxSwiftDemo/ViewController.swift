//
//  ViewController.swift
//  WDRxSwiftDemo
//
//  Created by 吴迪玮 on 16/3/7.
//  Copyright © 2016年 DNT. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class ViewController: UIViewController {
    
    @IBOutlet weak var cardCollectionView: UICollectionView!
    
    
    let disposeBag = DisposeBag()
    
    let initialValue = [
        NiuniuCard(rank:NiuniuCard.Rank.Ace,suit: NiuniuCard.Suit.Hearts),
        NiuniuCard(rank:NiuniuCard.Rank.Five,suit: NiuniuCard.Suit.Hearts),
        NiuniuCard(rank:NiuniuCard.Rank.Eight,suit: NiuniuCard.Suit.Spades),
        NiuniuCard(rank:NiuniuCard.Rank.Jack,suit: NiuniuCard.Suit.Dismonds),
        NiuniuCard(rank:NiuniuCard.Rank.King,suit: NiuniuCard.Suit.Clubs)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataSource = Variable([NiuniuCard]())
        
        dataSource.asObservable().bindTo(cardCollectionView.rx_itemsWithCellIdentifier("NiuniuCardCollectionIdentifier")){
            (_, element, cell) in
            let tempCell = cell as! NiuniuCardCollectionViewCell
            tempCell.model = element
        }
        .addDisposableTo(disposeBag)
        dataSource.value.appendContentsOf(initialValue)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

