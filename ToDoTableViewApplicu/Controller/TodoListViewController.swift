//
//  ViewController.swift
//  ToDoTableViewApplicu
//
//  Created by Roderick Presswood on 7/19/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = [Item]()
    
    // used to save data within the app code below
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newItem = Item()
        newItem.title = "Win"
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "Win Win Win Win"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "Fuck everything else"
        itemArray.append(newItem3)
        
//        print(itemArray.title)
//        if let items = defaults.array(forKey: "TodoListArray") as? [String] {
//            itemArray = items
//        }
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
        
        let item = itemArray[indexPath.row]
        
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done ?  .checkmark : .none
        
        //code below was shortened into ternary condition with line above
        
//        if item.done == true {
//            cell.accessoryType = .checkmark
//        } else {
//            itemArray[indexPath.row].done = false
//            cell.accessoryType = .none
//        }
        
        return cell
    }
    
    //Mark - TableView Delegate Methods
    //look for method that creates an action when table view cell is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        itemArray[indexPath.row].done = !itemArray [indexPath.row].done
        
        //line of code above is what the code commented directly below is saying
        
//        if itemArray[indexPath.row].done == false {
//            itemArray[indexPath.row].done = true
//        } else {
//            itemArray[indexPath.row].done = false
//        }
        tableView.reloadData()
        
    }
       //if statement below adds and deletes the check mark as requested
//        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
//            tableView.cellForRow(at: indexPath)?.accessoryType = .none
//        } else {
//            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//        }
//        tableView.deselectRow(at: indexPath, animated: true)
//
//    }
    
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
    
    
    //Mark - Add New Items Below
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todo Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //What will happen once the user clicks the add item button on our UIAlert
            let newItem = Item()
            newItem.title = textField.text!
            self.itemArray.append(newItem)
            
            //method below is used to save data in app
            self.defaults.set(self.itemArray, forKey: "TodoListArray")
            
            //refreshes data in tableView thus adding new element from text field into tableview
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Add new item"
            textField = alertTextField
//            self.itemArray.append(alertTextField.text!)
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    

}


