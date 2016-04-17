//
//  CalcViewController.swift
//  Assignment2d
//
//  Created by George Pantazis on 17/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {

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
   @IBOutlet weak var lblOutput: UILabel!
   @IBAction func CalcResult(sender: AnyObject)
   {
      
      if let newNumber = txtNumber.text {
         if let NumberInt = Int(newNumber) {
            
            if NumberInt % 2 == 0
            {
               lblOutput.text = "It's even"
            }
            else
            {
               lblOutput.text = "It's odd"
            }
            
            
         }
      }
      
      
   }
}
