//
//  Paso2.swift
//  Pizza
//
//  Created by Alejandro Cruz Sanchez on 28/05/17.
//  Copyright © 2017 Alejandro Cruz. All rights reserved.
//

import UIKit

class Paso2Controller: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tamanio:String = "";
    var tipoMasa:String = "";
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    @IBOutlet weak var pickerMasa: UIPickerView!
    
    var arrayPickerDataSource = ["Delgada","Crujiente","Gruesa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerMasa.dataSource = self
        self.pickerMasa.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoMasa = arrayPickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPickerDataSource[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! Paso3Controller
        
        sigVista.tamanio = tamanio
        sigVista.tipoMasa = tipoMasa
        
    }

    
}
