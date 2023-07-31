//
//  PersonDetail.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 31.07.2023.
//

import UIKit

class PersonDetail: UIViewController {

    @IBOutlet weak var tfPersonTel: UITextField!
    @IBOutlet weak var tfPersonName: UITextField!
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi{
            tfPersonName.text = k.kisi_ad
            tfPersonTel.text = k.kisi_tel
        }

       
    }
    

    @IBAction func buttonUpdate(_ sender: Any) {
        if let ka = tfPersonName.text, let kt = tfPersonTel.text, let k = kisi{
            güncelle(kisi_id: k.kisi_id!, kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func güncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String){
        print("Kişi Güncelle: \(kisi_id)- \(kisi_ad)- \(kisi_tel)")
        
        
    }
    
}
