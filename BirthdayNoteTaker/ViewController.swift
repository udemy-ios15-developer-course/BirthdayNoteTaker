//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Chris Hand on 8/1/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var birthdate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let storedName = UserDefaults.standard.object(forKey: "name") as? String
        else {
            print("could not read key 'name'")
            return
        }
        
        guard let storedDate = UserDefaults.standard.object(forKey: "birthdate") as? String
        else {
            print("could not read key 'birthdate'")
            return
        }
        
         name.text = storedName
         birthdate.text = storedDate
    }

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        UserDefaults.standard.set(name.text!, forKey: "name")
        UserDefaults.standard.set(birthdate.text!, forKey: "birthdate")
    }
    
}

