//
//  ViewController.swift
//  swiftDemoHelloWorld
//
//  Created by Vikas on 16/11/15.
//  Copyright © 2015 vikas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var TitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLabel.text = "well come"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func DidSelectContinueButton(sender: AnyObject) {
//        var alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alert, animated: true, completion: nil)
        
        let alertDemo = UIAlertController(title:"Demo", message: "Do you want to go to next screen?" ,preferredStyle: UIAlertControllerStyle.Alert)
        alertDemo.addAction(UIAlertAction(title: "Continue", style:UIAlertActionStyle.Default, handler: { action in
            print("clicked continue");
            
            let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController") as? SecondViewController
            self.navigationController?.pushViewController(secondViewController!, animated: true)
            
//            let secondViewController = self.storyboard.instantiateViewControllerWithIdentifier("UsersListTableView") as UsersListTableView
//            
//            self.navigationController.pushViewController(secondViewController, animated: true)
        }))
        alertDemo.addAction(UIAlertAction(title: "No", style:UIAlertActionStyle.Default, handler: { action in
            print("clicked no")
        }))
        self.presentViewController(alertDemo,animated:true,completion:nil)
    }
}

