//
//  PurchasedHistoryTableViewController.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/08/03.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class PurchasedHistoryTableViewController: UITableViewController {

    // MARK: - Vars
    
    var itemArray : [Item] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadItems()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ItemTableViewCell
        cell.generateCell(itemArray[indexPath.row])
        
        return cell
    }
    
    // MARK: - Load items
    
    private func loadItems() {
        downloadItems(MUser.currentUser()!.purchasedItemIds) { (allItems) in
            self.itemArray = allItems
            print("We have \(allItems.count) purchased")
            self.tableView.reloadData()
        }
    }
}
