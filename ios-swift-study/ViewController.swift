//
//  ViewController.swift
//  ios-swift-study
//
//  Created by darkpuca on 2015. 1. 26..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))


    @IBOutlet weak var testButton: UIButton!
        

    override func viewDidLoad()
    {
        super.viewDidLoad()

        myButton.addTarget(self, action: "tappedButton:", forControlEvents:.TouchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - functions
    @IBAction func tappedButton(sender: UIButton!)
    {
        println("tapped button")
        
        let alertView = UIAlertView(title: "test app", message: "test message", delegate: nil, cancelButtonTitle: "closeee")
        alertView.show()
    }
    
    
    

}

