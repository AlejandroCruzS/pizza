//
//  Paso4Controller.swift
//  Pizza
//
//  Created by Alejandro Cruz Sanchez on 28/05/17.
//  Copyright © 2017 Alejandro Cruz. All rights reserved.
//
import UIKit

class Paso4Controller: UIViewController {
    var tamanio:String = "";
    var tipoMasa:String = "";
    var queso:String = "";
    var pedido:String = ""
    
    @IBOutlet weak var jamon: UISwitch!
    
    @IBOutlet weak var peperoni: UISwitch!
    
    @IBOutlet weak var pavo: UISwitch!
    
    @IBOutlet weak var salch: UISwitch!
    
    @IBOutlet weak var cebolla: UISwitch!
    
    @IBOutlet weak var aceituna: UISwitch!
    
    @IBOutlet weak var anchoa: UISwitch!
    
    @IBOutlet weak var pina: UISwitch!
    
    @IBOutlet weak var pimiento: UISwitch!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! Confirmacion
    
        
        pedido = "Tamaño: \tamanio" +
                 "\nMasa:\(tipoMasa)" +
                 "\nQueso:\(queso)" +
                 "\nJamón:\((jamon.isOn ?"Si":"No"))" +
                 "\nPeperoni:\((peperoni.isOn ?"Si":"No"))" +
                 "\nPavo:\((pavo.isOn ?"Si":"No"))" +
                 "\nSalchicha:\((salch.isOn ?"Si":"No"))" +
                 "\nAceituna:\((aceituna.isOn ?"Si":"No"))" +
                 "\nCebolla:\((cebolla.isOn ?"Si":"No"))" +
                 "\nPimiento:\((pimiento.isOn ?"Si":"No"))" +
                 "\nPiña:\((pina.isOn ?"Si":"No"))" +
                 "\nAnchoa:\((anchoa.isOn ?"Si":"No"))"
        
        sigVista.terminada = pedido
        
    }
}
