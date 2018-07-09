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

class ViewController: UIViewController,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // collectionView.delegate = self
        collectionView.dataSource = self
        
     let human = Human()
        human.sayhello()
        
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! coustomCollectionViewCell
        cell.backgroundColor = UIColor.orange
        cell.layer.cornerRadius = 8
     
        
        cell.myLabel.text = String(indexPath.row)
        
        return cell
    }
}


// creating protocol

protocol Humanable {
    var name:String {get set }
    var age:Int {get set }
    var color:String {get}
    
    func sayhello()
}

open class Human:Humanable {
    var name: String = "Ekramul Hoque"
    
    var age: Int = 30
    
    var color: String = "black"
    
    func sayhello() {
        print("Hello i am \(name) my age is : \(age) and ,y color is \(color)")
    }
    
   
    static func protolTest() {
        
        let developer = Human()
    }
    

}

// protocol inharience

protocol SupperHumanable:Humanable {
    var haveGF:Bool {get set}
    func givePunch()
}

class Bangladeshi:SupperHumanable {
    var haveGF: Bool = true 
    
    func givePunch() {
        print("punch")
    }
    
    var name: String = "Ekram"
    
    var age: Int = 30
    
    var color: String = "Black"
    
    func sayhello() {
        print("hello")
    }
    
    
}








