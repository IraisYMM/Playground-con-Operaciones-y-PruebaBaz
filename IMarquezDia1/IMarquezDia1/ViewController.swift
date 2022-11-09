//
//  ViewController.swift
// CocoaController.swift
//  IMarquezDia1
//
//  Created by MacBookMBA5 on 14/09/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var ControlLabel: UILabel!
    
    @IBOutlet weak var ControlSemana: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnInicial(_sender: UIButton) {
        print("Se presiono el Boton")
    }
    
    @IBAction func Botones(_ sender: UIButton) {
        //LblBoton1.text = "Boton 1"
        MessageLabel.text = sender.titleLabel?.text!
    }
    
    @IBAction func ControlBotones(_ sender: UIButton) {
        ControlLabel.text = sender.titleLabel?.text!
    }
    
    @IBAction func ControlBSemana(_ sender: UIButton) {
        ControlSemana.text = sender.titleLabel?.text!
    }
}


       // @IBAction func btnCentral(_sender: UIButton) {
         //   print("Se selecciono el Boton")
            //  print(sender.titleLabel)
            //si dos botones estuvieran a un solo sender
            //}
       // }
    
