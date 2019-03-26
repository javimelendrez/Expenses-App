//
//  ViewController.swift
//  Gym Reminder
//
//  Created by javier melendrez on 2/5/19.
//  Copyright © 2019 Javier Melendrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask {
//need to include UITableViewDelegate, UITableViewDataSource up top
    //in the view controller we need to add AddTask
    //because we are createing multiple cells we need an array of task cells
    var tasks: [task] = [ ] //this is an empty array of task objects
    @IBOutlet weak var table_view: UITableView!
    //this func allows you to delete task by swiping left
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            self.tasks.remove(at: indexPath.row) //remove the row
            table_view.reloadData() //reload the table view
        }
    }
    override func viewDidLoad() {
        tasks.append(task(name: "Vendor - Account - Amount"))
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //need this func to determine how many rows is going to show on the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count //this returns the count of data in the array which is how many cells you will show
    }
    
    //need this func to change those rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Workout Cell", for: indexPath) as! WorkoutCell
        cell.task_label.text = tasks[indexPath.row].name //the label of the cell will be changed according to whats in the array @ indexPath
        
        //use an if statement to check if task checked
//       if tasks[indexPath.row].checked{
//            //cell.check_box.setTitleColor(, for: <#T##UIControl.State#>)
//        
//        }
        
        return cell
    }
    //you need this so that the delegate functions can work with view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskController
        vc.delegate = self
    }
    //now we have to define what this func actually does in terms of the view controller
    func add_task(name: String) {
        tasks.append(task(name: name))
        table_view.reloadData()
        
    }


}
class task {
    var name = " " //holds the task obj
    var checked = false //will determine whether the task is checked
    //initially we just neeed the name of the task, it shouldnt be checked at first
    convenience init(name: String){
        self.init()
        self.name = name //the name of the task will be equal to whatever is passed
        
    }
    
}

