//
//  PersonRegistration.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 31.07.2023.
//

import UIKit

class PersonRegistration: UIViewController {

    @IBOutlet weak var tfPersonTel: UITextField!
    @IBOutlet weak var tfPersonName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
   
    @IBAction func buttonSave(_ sender: Any) {
        if let ka = tfPersonName.text, let kt = tfPersonTel.text{
            kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    
    func kaydet(kisi_ad:String, kisi_tel:String) {
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }

}
