//
//  ViewController.swift
//  uvabucketlist
//
//  Created by user145429 on 9/29/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import UIKit

var BucketList = [BucketItem]()


class BucketListTableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    func loadSampleItems() {
        let item1 = BucketItem(name: "item1", description: "ya", latitude: 12, longitude: 2, date: Date())
        BucketList += [item1]
        let item2 = BucketItem(name: "item2",description: "ya", latitude: 12, longitude: 2, date: Date())
        BucketList += [item2]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    // Override to show how many lists there should be
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Override to show how many notes are in the list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BucketList.count
    }
    
    // Override to show what each cell should have in it based on the note in the list
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "BucketListTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let item = BucketList[indexPath.row]
        
        cell.ItemNameLabel.text = item.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: item.date)
        cell.DateLabel.text = convertedDate
        
        return cell
    }
    
    // Override to support tapping on an element in the table view.
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let index = indexPath[1]
        let currentItem = BucketList[index]
        let alertController = UIAlertController(title: currentItem.name, message: currentItem.description + "\nsaved at: " + currentItem.date.description, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    //    // Override to support editing the table view if you wanted just a delete button
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //
    //        if editingStyle == .delete {
    //            // Delete the row from the data source
    //            notes.remove(at: indexPath.row)
    //            // Delete the row from the view
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //        } else if editingStyle == .insert {
    //            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    //        }
    //    }
    
    // Lets you add various buttons when you swipe
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let done = UITableViewRowAction(style: .normal, title: "Done") { action, index in
            
            
        }
        done.backgroundColor = .green
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { action, index in
            
        }
        
        edit.backgroundColor = .orange
        
        
        return [done, edit]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }}


