//
//  ItemsTableViewController.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/28.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class ItemsTableViewController: UITableViewController {

    // MARK: - Vars
    
    var category: Category?
    var itemArray: [Item] = []
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        self.title = category?.name
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if category != nil {
            loadItems()
        }
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

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "itemToAddItemSeg" {
            let vc = segue.destination as! AddItemViewController
            vc.category = category!
        }
    }
    
    // Load items
    
    private func loadItems() {
        downloadItemsFromFirebase(withCategoryId: category!.id) { (allItems) in
            self.itemArray = allItems
            self.tableView.reloadData()
        }
    }

}
