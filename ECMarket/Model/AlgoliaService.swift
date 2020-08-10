//
//  AlgoliaService.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/08/09.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import Foundation
import InstantSearchClient

class AlgoliaService {
    static let shared = AlgoliaService()
    
    let client = Client(appID: kALGOLIA_APP_ID, apiKey: kALGOLIA_ADMIN_KEY)
    let index = Client(appID: kALGOLIA_APP_ID, apiKey: kALGOLIA_ADMIN_KEY).index(withName: "item_Name")
    
    private init() {}
}
