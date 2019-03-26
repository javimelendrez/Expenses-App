//
//  AddTaskController.swift
//  Gym Reminder
//
//  Created by javier melendrez on 2/5/19.
//  Copyright © 2019 Javier Melendrez. All rights reserved.
//

import UIKit
//this is to pass data to another file without having to use a global variable
protocol AddTask {
    func add_task(name: String)
}
class AddTaskController: UIViewController {

    @IBAction func add_button(_ sender: Any) {
        //check if the text field is empty
        if task_name.text != " "
        {
            //the delegate allows us to use the func
            delegate?.add_task(name: task_name.text!+" - "+account_name.text!+" - $"+amount_name.text!)
            //this code below is to go back to main screen when add is typed
            navigationController?.popViewController(animated: true)
        }
    }
    @IBOutlet weak var task_name: UITextField!
    @IBOutlet weak var account_name: UITextField!
    @IBOutlet weak var amount_name: UITextField!
    
    var delegate: AddTask?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
