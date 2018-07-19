//
//  ViewController.swift
//  ToDoTableViewApplicu
//
//  Created by Roderick Presswood on 7/19/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Win", "Win Win Win Win", "Just Win"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - TableView Datasource Methods
    
    //creates cells needed to be filled within the table view
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    // specifies what will be in an individual cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    //code below will create itemAray and place an element from the array in their own cell
    // in multiple sections being each count in itemArray will create a new section of individual cells
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return itemArray.count
//    }
    
    

}

