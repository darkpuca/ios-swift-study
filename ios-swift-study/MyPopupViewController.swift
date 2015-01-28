//
//  MyPopupViewController.swift
//  ios-swift-study
//
//  Created by darkpuca on 2015. 1. 28..
//  Copyright (c) 2015년 darkpuca. All rights reserved.
//

import UIKit

class MyPopupViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var aniView: UIView!
    
    var item: TableItemModel?
    
    override func viewDidAppear(animated: Bool) {
        moveRightWithAnimation()
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject){
        println("saveButtonTapped")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender !== saveButton {
            return
        }

        if 0 < countElements(textField.text) {
            item = TableItemModel(name: textField.text)
        }
    }
    
    // MARK: - functions
    func moveRightWithAnimation(){
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            var frame = self.aniView.frame
            frame.origin.x += 100
            self.aniView.frame = frame
            }, completion: { finished in
                println("move right completed.")
                self.moveDownWithAnimation()
        })
    }
    
    func moveDownWithAnimation(){
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            var frame = self.aniView.frame
            frame.origin.y += 100
            self.aniView.frame = frame
            }, completion: { finished in
                println("move down completed.")
                self.moveLeftWithAnimation()
        })
    }
    
    func moveLeftWithAnimation(){
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            var frame = self.aniView.frame
            frame.origin.x -= 100
            self.aniView.frame = frame
            }, completion: { finished in
                println("move right completed.")
                self.moveUpWithAnimation()
        })
    }
    
    func moveUpWithAnimation(){
        UIView.animateWithDuration(0.7, delay: 1.0, options: .CurveEaseOut, animations: {
            var frame = self.aniView.frame
            frame.origin.y -= 100
            self.aniView.frame = frame
            }, completion: { finished in
                println("move up completed.")
        })
    }
}
