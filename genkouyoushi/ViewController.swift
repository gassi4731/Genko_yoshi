//
//  ViewController.swift
//  genkouyoushi
//
//  Created by Yo Higashida on 2021/11/04.
//

// TODO: 文章からrowとcolumnの数がぴったりになるように算出する。文章が右から左になるようなclassをつくる。

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var sampleArray = [String](repeating: "あ", count: 104);
    
    override func viewDidLoad() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        self.collectionView.bounds.size.width = self.view.bounds.size.width-10
        self.collectionView.bounds.size.height = self.view.bounds.size.height
        self.collectionView.center = self.view.center
        
        // スクロールを有効化
        collectionView.isScrollEnabled = true
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        collectionView.reloadData()
        collectionView.layoutIfNeeded()
        collectionView.scrollToItem(at: IndexPath(item: sampleArray.count - 20, section: 0), at: .centeredHorizontally, animated: false)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    // collectionViewの要素の数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleArray.count
    }
    
    //collectionViewのセルを返す（セルの内容を決める）
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.label.text = sampleArray[indexPath.row]
        return cell
    }
    
    //セルのサイズ(CGSize)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 40)
    }
}
