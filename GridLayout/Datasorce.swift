//
//  Datasorce.swift
//  GridLayout
//
//  Created by 岡本　優河 on 2018/07/08.
//  Copyright © 2018年 Sabminder. All rights reserved.
//

import UIKit

class Datasorce: NSObject,UICollectionViewDataSource {
    
    var carsToDisplay:[Car] = []
    
    override init(){
        super.init()
        
        carsToDisplay = [Car(objectID: "12", name: "ferrafi", price: 120000, salePlace: 118000, carDescription: "gagaakeajkgjaskdgaks", image: UIImage(named: "ferrari")),
                         Car(objectID: "13", name: "ferrafi", price: 130000, salePlace: 218000, carDescription: "gagaakeajkgjaskdgaks", image: UIImage(named: "porshe")),
                         Car(objectID: "14", name: "ferrafi", price: 140000, salePlace: 318000, carDescription: "gagaakeajkgjaskdgaks", image: UIImage(named: "BmW")),
                         Car(objectID: "15", name: "ferrafi", price: 150000, salePlace: 518000, carDescription: "gagaakeajkgjaskdgaks", image: UIImage(named: "lamborghini")),
                         Car(objectID: "16", name: "ferrafi", price: 160000, salePlace: 618000, carDescription: "gagaakeajkgjaskdgaks", image: UIImage(named: "honda"))]
    }
    
    //MARK:collectionView methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        
        let car = carsToDisplay[indexPath.item]
        cell.imageView.image = car.image
        cell.nameLabel.text = car.name
        if let price = car.price{
        cell.priceLabel.text = "$\(price)"
        }
        

        return cell
    }
    

}
