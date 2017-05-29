//
//  Paso3Controller.swift
//  Pizza
//
//  Created by Alejandro Cruz Sanchez on 28/05/17.
//  Copyright © 2017 Alejandro Cruz. All rights reserved.
//

import UIKit

class Paso3Controller: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    var tamanio:String = "";
    var tipoMasa:String = "";
    var queso:String = "";
    
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    var arrayPickerDataSource = ["Mozarela","Cheddar","Parmesano","Sin queso"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerQueso.dataSource = self
        self.pickerQueso.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        queso = arrayPickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPickerDataSource[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! Paso4Controller
    
        sigVista.tamanio = tamanio
        sigVista.tipoMasa = tipoMasa
        sigVista.queso = queso
        
    }
    
    

    
    
}
