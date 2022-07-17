//
//  ViewController.swift
//  Alerts
//
//  Created by Ogulcan Kara on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func basicAlertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Header", message: "Basic Alert", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in print("Cancel clicked")
        }
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Ok", style: .destructive){
            action in print("Ok Clicked")
        }
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func specAlertButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Header", message: "spec Alert", preferredStyle: .alert)
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "E-mail"
            textfield.keyboardType = .emailAddress
        }
        
        alertController.addTextField{ textfield in
            textfield.placeholder = "Password"
            textfield.isSecureTextEntry = true
        }
        
        let saveAction = UIAlertAction(title: "Save", style: .cancel){
            action in print("Save clicked")
            
            let inputEmail = (alertController.textFields![0] as UITextField).text!
            
            let inputPassword = (alertController.textFields![1] as UITextField).text!
            
            self.resultLabel.text = "Email : \(inputEmail) Password : \(inputPassword)"
        }
        
        alertController.addAction(saveAction)
        
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func actionSheetButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Header", message: "Basic Alert", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in print("Cancel clicked")
        }
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Ok", style: .destructive){
            action in print("Ok Clicked")
        }
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true)
        
    }
}

