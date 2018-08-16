//
//  AddTaskController.swift
//  XCodeProject2.4
//
//  Created by Catherine Xu on 7/2/18.
//  Copyright © 2018 Catherine Xu. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddTaskController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBAction func addAction(_ sender: Any) {
        if firstName.text != "" && lastName.text != "" {
            let stringUtils = StringUtils()
            delegate?.addTask(name: stringUtils.createNameWith(first: firstName.text!, last: lastName.text!))
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    var delegate: AddTask?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
