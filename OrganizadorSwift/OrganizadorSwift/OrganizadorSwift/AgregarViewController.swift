//
//  AgregarViewController.swift
//  OrganizadorSwift
//
//  Created by CEDAM18 on 25/11/19.
//  Copyright © 2019 CEDAM18. All rights reserved.
//

import UIKit

class AgregarViewController: UIViewController {

    @IBOutlet weak var nombreTarea: UITextField!
   
    @IBOutlet weak var materia: UITextField!
    
    var index = -1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func agregarBtn(_ sender: Any) {
        if (nombreTarea.text != "") {
            if (index >= 0){
                lista[index] = nombreTarea.text!
                nombreTarea.text = ""
            }else{
            lista.append(nombreTarea.text!)
            nombreTarea.text = ""
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if (index >= 0) {
            nombreTarea.text = lista[index]
        }
        else{
            nombreTarea.text = ""
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        index = -1
    }
    

}
