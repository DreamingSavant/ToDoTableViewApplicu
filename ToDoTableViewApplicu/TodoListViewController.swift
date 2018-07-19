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
    
    //Mark - TableView Delegate Methods
    //look for method that creates an action when table view cell is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         tableView.deselectRow(at: indexPath, animated: true)
        
       //if statement below adds and deletes the check mark as requested
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
    }
    
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        tableView.cellForRow(at: indexPath)?.accessoryType = .ishidden
//
//
//    }
    //code below will create itemAray and place an element from the array in their own cell
    // in multiple sections being each count in itemArray will create a new section of individual cells
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return itemArray.count
//    }
    
    

}

