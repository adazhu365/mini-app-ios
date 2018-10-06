//
//  EditItemViewController.swift
//  uvabucketlist
//
//  Created by user145429 on 10/6/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import UIKit

class EditItemViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var Latitude: UITextField!
    @IBOutlet weak var Longitude: UITextField!
    @IBOutlet weak var Date: UIDatePicker!
    @IBAction func Save(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
}
