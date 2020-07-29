//
//  FirebaseCollectionReference.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/27.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case User
    case Category
    case Items
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    return Firestore.firestore().collection(collectionReference.rawValue)
}
