//
//  GenkoYoshiManager.swift
//  genkouyoushi
//
//  Created by Yo Higashida on 2021/11/04.
//

import Foundation
import UIKit

class GenkoYoshiManager {
    
    var rowLength: Int!
    var columnLength: Int!
    let cellSize = 40
    
    init(collectionView: UICollectionView, content: String) {
        // 要素の高さを取得
        let collectionViewHeight = collectionView.bounds.height
        print(collectionViewHeight)
        
        // 1列あたりのCellの個数を決める
        
        // 1列あたりのCellの個数を元に文字列を配列に分割する
        
        // 配列を逆順にする
        
        // 配列から文字列に戻す
        print(collectionViewHeight)
    }
    
    // テーブルのCellの個数を返却
    func numberOfItem() -> Int {
        return rowLength * columnLength
    }
}
