//
//  AddViewController.swift
//  Assignment2d
//
//  Created by George Pantazis on 17/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

   @IBOutlet weak var txtNumber: UITextField!
   @IBOutlet weak var lblOuput: UILabel!
   
   @IBAction func AddNumbers(sender: AnyObject)
   {
      
      
      guard let currentNumber = lblOuput.text else {
         return
      }
      
      guard let currentNumberInt = Int(currentNumber) else {
         return
      }
      
      // New Text
      guard let newNumber = txtNumber.text else {
         return
      }
      
      guard let newNumberInt = Int(newNumber) else {
         return
      }
      
      
      let newAddition = currentNumberInt + newNumberInt
      
      
      lblOuput.text = "\(newAddition)"
      
   }
}
