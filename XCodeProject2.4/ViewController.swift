//
//  ViewController.swift
//  XCodeProject2.4
//
//  Created by Catherine Xu on 7/2/18.
//  Copyright © 2018 Catherine Xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask {
  

    @IBOutlet weak var tableView: UITableView!
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        tasks.append(Task(name: "Jane Doe"))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskCell
        cell.taskNameLabel.text = tasks[indexPath.row].name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskController
        vc.delegate = self
    }
    func addTask(name: String) {
        tasks.append(Task(name: name))
        tableView.reloadData()
    }
    
}

class Task {
    var name = ""
    var checked = false
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
