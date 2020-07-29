//
//  Category.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/27.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class Category {
    var id: String
    var name: String
    var image: UIImage?
    var imageName: String?
    
    init(_name: String, _imageName: String) {
        id = ""
        name = _name
        imageName = _imageName
        image = UIImage(named: _imageName)
    }
    
    init(_dictionary: NSDictionary) {
        id = _dictionary[kOBJECTID] as! String
        name = _dictionary[kNAME] as! String
        image = UIImage(named: _dictionary[kIMAGENAME] as? String ?? "")
    }
}

// MARK: - Download category from Firebase

func downloadCategoriesFromFirebase(completion: @escaping(_ categoryArray: [Category]) -> Void) {
    var categoryArray: [Category] = []
    
    FirebaseReference(.Category).getDocuments { (snapshot, error) in
        guard let snapshot = snapshot else {
            return completion(categoryArray)
        }
        
        if !snapshot.isEmpty {
            for categoryDict in snapshot.documents {
                categoryArray.append(Category(_dictionary: categoryDict.data() as NSDictionary))
            }
        }
        
        completion(categoryArray)
    }
}

// MARK: - Save category functions

func saveCategroyToFirebase(_ category: Category) {
    let id = UUID().uuidString
    category.id = id
    
    FirebaseReference(.Category).document(id).setData(categoryDictionaryFrom(category) as! [String : Any])
}

// MARK: - Helpers

func categoryDictionaryFrom(_ category: Category) -> NSDictionary {
    return NSDictionary(objects: [category.id, category.name, category.imageName], forKeys: [kOBJECTID as NSCopying, kNAME as NSCopying, kIMAGENAME as NSCopying])
}

// use only one time
//func createCategorySet() {
//    let bicycle = Category(_name: "Bicycle", _imageName: "bicycle")
//    let book = Category(_name: "Book", _imageName: "book")
//    let clothes = Category(_name: "Clothes", _imageName: "clothes")
//    let coffee = Category(_name: "Coffee" , _imageName: "coffee")
//    let movie = Category(_name: "Movie", _imageName: "minion")
//    let home = Category(_name: "Home", _imageName: "home")
//    let chair = Category(_name: "Chair", _imageName: "sleeper-chair")
//    let watch = Category(_name: "Watch", _imageName: "smart-watch")
//    let sports = Category(_name: "Sports", _imageName: "bench-press")
//    let table = Category(_name: "Table", _imageName: "table")
//    let travel =  Category(_name: "Traveling", _imageName: "travel")
//    let kitchen = Category(_name: "Kitchen products", _imageName: "kitchen")
//    let footWear = Category(_name: "Foot wear", _imageName: "sneakers")
//    let foods = Category(_name: "Foods", _imageName: "tableware")
//    let animal = Category(_name: "Animal", _imageName: "gorilla")
//
//    let arrayOfCategories = [bicycle, book, clothes, coffee, movie, home, chair, watch, sports, table, travel, kitchen, footWear, foods, animal]
//
//    for category in arrayOfCategories {
//        saveCategroyToFirebase(category)
//    }
//}
