//
//  ViewController.swift
//  Walkthrough Demo
//
//  Created by AmosPune on 2/9/17.
//  Copyright © 2017 AmosPune. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BWWalkthroughViewControllerDelegate {

    @IBAction func showWalkthroughButtonPressed() {
        //print("showWalkthroughButtonPressed")
        
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let walkthrough = stb.instantiateViewController(withIdentifier: "walk0") as! BWWalkthroughViewController
        let page_one = stb.instantiateViewController(withIdentifier: "walk1")
        let page_two = stb.instantiateViewController(withIdentifier: "walk2")
        let page_three = stb.instantiateViewController(withIdentifier: "walk3")
        //let page_four = stb.instantiateViewController(withIdentifier: "page_4")
        
        walkthrough.delegate = self
        walkthrough.add(viewController:page_one)
        walkthrough.add(viewController:page_two)
        walkthrough.add(viewController:page_three)
        //walkthrough.add(viewController:page_four)
        
        self.present(walkthrough, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func walkthroughCloseButtonPressed(){
        //print("walkthroughCloseButtonPressed")
        self.dismiss(animated: true, completion: nil)
    }

}

