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
    var nametxt:String?
    var desctxt:String?
    var Latiint:Int?
    var Longint:Int?
    var Dateday:Date?
    var index:Int?
    var edit:BucketItem?
    @IBAction func Save(_ sender: Any) {
        if (edit!.name != ""){
            BucketList.remove(at: index!)
            edit = BucketItem(name:Name.text!,description: Description.text!, latitude: Int(Latitude.text!)!, longitude: Int(Longitude.text!)!, date: Date.date)
            BucketList += [edit!]
        }
        navigationController?.popToRootViewController(animated: true)    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Name.text = edit!.name
        Description.text=edit!.description
        Latitude.text=String(edit!.latitude)
        Longitude.text=String(edit!.longitude)
        Date.date = (edit?.date)!
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
}
