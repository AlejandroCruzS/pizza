//
//  ViewController.swift
//  Pizza
//
//  Created by Alejandro Cruz Sanchez on 23/05/17.
//  Copyright © 2017 Alejandro Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var pickertamanio: UIPickerView!
    
    var arrayPickerDataSource = ["Chica","Mediana","Grande"]
    
    var tamanio:String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickertamanio.dataSource = self
        self.pickertamanio.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        tamanio = arrayPickerDataSource[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayPickerDataSource[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! Paso2Controller
        
        sigVista.tamanio = tamanio
    }
}

