//
//  EditItemViewController.swift
//  uvabucketlist
//
//  Created by user145429 on 10/6/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import Foundation





override func viewDidLoad() {
    super.viewDidLoad()
    self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    // Do any additional setup after loading the view.
}
@objc func dismissKeyboard() {
    //Causes the view (or one of its embedded text fields) to resign the first responder status.
    view.endEditing(true)
}
