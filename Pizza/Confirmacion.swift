//
//  Confirmacion.swift
//  Pizza
//
//  Created by Alejandro Cruz Sanchez on 28/05/17.
//  Copyright © 2017 Alejandro Cruz. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {
    var tamanio:String = "";
    var tipoMasa:String = "";
    var queso:String = "";
    var terminada:String = ""
    
    
    override func viewWillAppear(_ animated: Bool) {
        preparacion.text = terminada
        
    }
    
    @IBOutlet weak var preparacion: UILabel!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
}
