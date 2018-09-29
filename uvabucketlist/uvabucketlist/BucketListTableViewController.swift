//
//  ViewController.swift
//  uvabucketlist
//
//  Created by user145429 on 9/29/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var BucketList = [BucketItem]()
    
    func loadSampleItems() {
        let item1 = BucketItem(name: "item1", description: "ya", latitude: 12, longitude: 2, date: "2011/12/11")
        BucketList += [item1]
        let item2 = BucketItem(name: "item2",description: "ya", latitude: 12, longitude: 2, date: "2012/12/12")
        BucketList += [item2]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
    


}

