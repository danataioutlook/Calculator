//
//  ViewController.swift
//  Calculator
//
//  Created by Dana on 1/25/20.
//  Copyright © 2020 Dana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen:Double=0;
    var firstnum:Double=0;
    var operation:Int=0;
    var mathSign:Bool=false;
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign==true{
            result.text=String(sender.tag)
            mathSign=false
        }
        else{
            result.text=result.text! + String(sender.tag)
        }
        
    
        numberFromScreen=Double(result.text!)!
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15  {
            firstnum=Double(result.text!)!
            if sender.tag == 11 { //Деление
                result.text="/";
                }
            else if sender.tag == 12{ //Умножение
                result.text="*";
            }
            else if sender.tag == 13{
                result.text="-";
                //Минус
                }
            else if sender.tag == 14{
                result.text="+";
                //Плюс
                }
            else if sender.tag == 17{
            result.text="%";
          
            }
           
            operation = sender.tag
            mathSign=true;
        }
        else if sender.tag==15{ // Посчитать все
            
            if operation == 11{
                result.text = String(firstnum / numberFromScreen)
            }
            else if operation == 12{
                result.text = String(firstnum * numberFromScreen)
            }
            else if operation == 13{
                result.text = String(firstnum - numberFromScreen)
            }
            else if operation == 14{
                result.text = String(firstnum + numberFromScreen)
            }
           else if operation == 17{
                result.text = String(firstnum + numberFromScreen)
            }
           
            
        }
        else  if sender.tag == 10{
            result.text = ""
            firstnum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

