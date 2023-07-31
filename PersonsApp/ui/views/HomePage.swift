//
//  ViewController.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 31.07.2023.
//

import UIKit

class HomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonDetay(_ sender: Any) {
        
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Tuba", kisi_tel: "1111")
        
        performSegue(withIdentifier: "toDetail", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let kisi = sender as? Kisiler{
                let gidilecekVC = segue.destination as! PersonDetail //Downcasting
                gidilecekVC.kisi = kisi 
            }
            
            
        }
    }
}

