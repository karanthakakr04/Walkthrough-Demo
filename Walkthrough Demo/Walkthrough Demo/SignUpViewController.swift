//
//  SignUpViewController.swift
//  Walkthrough Demo
//
//  Created by AmosPune on 2/9/17.
//  Copyright © 2017 AmosPune. All rights reserved.
//

import UIKit

@objc public protocol SignUpViewControllerDelegate{
    @objc optional func signUpCancelBuPressed()
}

class SignUpViewController: UIViewController {
    
    open var delegate: SignUpViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpCancelButtonPressed(_ sender: UIBarButtonItem) {
        print("signUpCancelBuPressed")
        delegate?.signUpCancelBuPressed!()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
