//
//  ViewController.swift
//  Todoey
//
//  Created by Sajan Mathew on 10/25/18.
//  Copyright © 2018 Sajan Mathew. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Hello Sajan", "Find Eldrina", "Get Married", "Fall in immense Love", "Have a Life filled with Dreams", "Have Babies"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

// TableView Data Source Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
//        cell.textLabel?.text = itemArray[indexPath.row]
//        return cell
        let cell = UITableViewCell(style:.default, reuseIdentifier:"TodoItemCell")
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
// MARK - Table view Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(itemArray[indexPath.row])
        if (tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark) {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

