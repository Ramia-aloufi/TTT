//
//  ViewController.swift
//  TTT
//
//  Created by R on 01/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isActive = true
    var buttonColor = ["","","","","","","","",""]
    
    @IBOutlet weak var winnerlabel: UILabel!
    
    @IBOutlet var Buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in Buttons {
            i.layer.cornerRadius  = 15
            i.backgroundColor = .lightGray
        }
    }
    
    @IBAction func changeButtonColor(_ sender: UIButton) {
        
        if isActive{
            changeButtonBG(color: .red, sender: sender)
            buttonColor.remove(at: sender.tag - 1)
            buttonColor.insert("red", at: sender.tag - 1)
            winner(color:"red")

        }
        else{
            changeButtonBG(color: .blue, sender: sender)
            buttonColor.remove(at: sender.tag - 1)
            buttonColor.insert("blue", at: sender.tag - 1)
            winner(color:"blue")

        }
        print(sender.tag - 1)
        for i in buttonColor{
            print(i)
        }
        
    }
    
    
    func changeButtonBG(color:UIColor,sender: UIButton){
        for i in Buttons{
            if i.tag == sender.tag{
                i.backgroundColor = color
            }
        }
        isActive = !isActive
    }
    
    
        
    func winner(color:String){

            if buttonColor[0] == color && buttonColor[1] == color && buttonColor[2] == color ||
               buttonColor[3] == color && buttonColor[4] == color && buttonColor[5] == color ||
               buttonColor[6] == color && buttonColor[7] == color && buttonColor[8] == color ||
                
               buttonColor[0] == color && buttonColor[3] == color && buttonColor[6] == color ||
               buttonColor[1] == color && buttonColor[4] == color && buttonColor[7] == color ||
               buttonColor[2] == color && buttonColor[5] == color && buttonColor[8] == color ||
                
               buttonColor[0] == color && buttonColor[4] == color && buttonColor[8] == color ||
               buttonColor[2] == color && buttonColor[4] == color && buttonColor[6] == color {
                                    winnerlabel.text = "\(color) Won!"
                                    }
        }
    
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        for i in Buttons{
            i.backgroundColor = .lightGray
            winnerlabel.text = ""
            buttonColor = ["","","","","","","","",""]
        }
        
    }
    

}

