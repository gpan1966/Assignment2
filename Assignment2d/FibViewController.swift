//
//  FibViewController.swift
//  Assignment2d
//
//  Created by George Pantazis on 17/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class FibViewController: UIViewController {

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
   
   
   @IBAction func CalculateFib(sender: AnyObject)
   {
      
      if let newNumber = txtNumber.text {
         if let newNumberInt = Int(newNumber) {
            
            lblOutput.text = String(fiboncciAdder(newNumberInt))
         }
      }
      
   //   lblOutput.text = "Test"
      
   }


func fiboncciAdder2(number: Int) ->Int
   {
   
      var fibNumber: Int
      
      if (number <= 1)
      {
         fibNumber = number
      }
      else
      {
         fibNumber = fiboncciAdder(number - 1) + fiboncciAdder(number - 2)
      }
      
      return fibNumber
   }

   func fiboncciAdder(number: Int) ->Int
   {
      
      if number <= 1
      {
         return number
      }
      else
      {
         return fiboncciAdder(number - 1) + fiboncciAdder(number - 2)
      }
   }

}
