//
//  AddViewController.swift
//  uvabucketlist
//
//  Created by apple on 2018/10/1.
//  Copyright © 2018 user145429. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {


    @IBOutlet weak var ItemName: UITextField!
    @IBOutlet weak var Description: UITextField!
    
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
