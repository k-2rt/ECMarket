//
//  Constants.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/27.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import Foundation

enum Constants {
    static let publishableKey = ProcessInfo.processInfo.environment["StripeAPI"]!
    static let baseURLString = "https://ecmarket.herokuapp.com/"
    static let defaultCurrency = "jpy"
    static let defaultDescription = "Purchase from ECMarket"
}

// IDS and Keys

public let KFILEREFERENCE = ProcessInfo.processInfo.environment["StorageAPI"]!
public let kALGOLIA_APP_ID = ProcessInfo.processInfo.environment["AlgoliaAppID"]!
public let kALGOLIA_SEARCH_KEY = ProcessInfo.processInfo.environment["AlgoliaSearchKey"]!
public let kALGOLIA_ADMIN_KEY = ProcessInfo.processInfo.environment["AlgoliaAdminKey"]!


// Firebase Headers

public let kUSER_PATH = "User"
public let kCATEGORY_PATH = "Category"
public let kITEMS_PATH = "Items"
public let kBAKET_PATH = "Basket"

// Categories

public let kNAME = "name"
public let kIMAGENAME = "imageNAme"
public let kOBJECTID = "objectId"

// Item

public let kCATEGORYID = "categoryId"
public let kDESCRIPTION = "description"
public let kPRICE = "price"
public let kIMAGELINKS = "imageLinks"

// Basket

public let kOWNERID = "ownerId"
public let kITEMIDS = "itemIds"

// User

public let kEMAIL = "email"
public let kFIRSTNAME = "firstName"
public let kLASTNAME = "lastName"
public let kFULLNAME = "fullName"
public let kCURRENTUSER = "currentUser"
public let kFULLADDRESS = "fullAddress"
public let kONBOARD = "onBoard"
public let kPURCHASEDITEMIDS = "purchasedItemIds"
