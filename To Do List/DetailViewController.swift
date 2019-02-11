//
//  DetailViewController.swift
//  To Do List
//
//  Created by Timothy Yang on 2/11/19.
//  Copyright © 2019 Timothy Yang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var toDoItem: String?
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    @IBOutlet weak var toDoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let toDoItem = toDoItem {
            toDoField.text = toDoItem
        }

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindFromSave" {
            toDoItem = toDoField.text
        }
    }
    


}
