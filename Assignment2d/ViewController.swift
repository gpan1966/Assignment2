//
//  ViewController.swift
//  Assignment2d
//
//  Created by George Pantazis on 17/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }


   @IBOutlet weak var txtName: UITextField!
   @IBOutlet weak var txtAge: UITextField!
   @IBOutlet weak var lblOutput: UILabel!
   
   
   @IBAction func generateText(sender: AnyObject)
   {
  
      if (ValidateInput() == true)
      {
         // PartOne()
      
         // PartTwo()
      
         // PartThree()
      
         PartFour()
      }
   }
   
   
   func ValidateInput() ->Bool
   {
      
      // Validate the input to ensure text has been entered in both the Name and Age fields
      // Asswell as ensuring Age is numeric
   
      let strName = txtName.text
      let strAge = txtAge.text
      
      var errorMsg: String?
      var inputOK: Bool
      
      
      if (strName?.characters.count > 0 && strAge?.characters.count > 0)
      {
         if let newNum = Int(strAge!){
            inputOK = true
         } else
         {
            errorMsg = "Hmmm, please ensure your age is a number"
            inputOK = false
         }
      }
      else
      {
         errorMsg = "Please enter both your name and age."
         inputOK = false
         
      }
      
      if (inputOK == false)
      {
         // Display Alert as user input as occurred
      
         let InputError = UIAlertController(title:"Input Error", message: errorMsg, preferredStyle: UIAlertControllerStyle.Alert)
         
         let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
         
         InputError.addAction(okAction)
         
         self.presentViewController(InputError, animated: true, completion: nil)
         
      }
      return inputOK
   }
   
   
   func PartOne()
   {
      
      // Part 1 of the assignment
      
      lblOutput.text = "Hello, World!"
      
   }
   
   func PartTwo()
   {
      
      // Part 2 of the assignment
      
      lblOutput.text = "Hello " + txtName.text! + ", you are " + txtAge.text! + " years old!"
      
   }
   
   func PartThree2()
   {
      
      // Part 4 of the assignment
      
      var strOutput: String
      
      let age = Int(txtAge.text!)
      
      switch Int(age!)
      {
         case 0...15:
            strOutput = ""
         case 16...17:
            strOutput = "You can drive"
         case 18...20:
            strOutput = "You can vote"
         default:
            strOutput = "You can drive"
      }
            
      lblOutput.text = strOutput
      
   }
   
   func PartThree()
   {
      
      // Part 3 of the assignment
      
      let age = Int(txtAge.text!)
      
      switch Int(age!)
      {
      case 0...15:
         lblOutput.text = ""
      case 16...17:
         lblOutput.text = "You can drive"
      case 18...20:
         lblOutput.text = "You can vote"
      default:
         lblOutput.text = "You can drink"
      }
      
   }
   
   func PartFour()
   {
         
         //  Part 4 of the assignment
      
         let age = Int(txtAge.text!)
         
         switch Int(age!)
         {
         case 0...15:
            lblOutput.text = ""
         case 16...17:
            lblOutput.text = "You can drive"
         case 18...20:
            lblOutput.text = "You can drive and vote"
         default:
            lblOutput.text = "You can drive, vote and drink (but not at the same time!)"
         }
   }
}

