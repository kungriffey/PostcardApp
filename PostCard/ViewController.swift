//
//  ViewController.swift
//  PostCard
//
//  Created by Kunwardeep Gill on 2014-10-20.
//  Copyright (c) 2014 ProjectDGW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here for GitHub Reference
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

