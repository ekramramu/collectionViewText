//
//  ViewController.swift
//  CollectionViewFlowlayout
//
//  Created by Ekramul Hoque on 9/7/18.
//  Copyright © 2018 Ekramul Hoque. All rights reserved.
//

import UIKit

class coustomCollectionViewCell:UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
}

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! coustomCollectionViewCell
        cell.myLabel.text = String(indexPath.row)
        return cell
    }
}

