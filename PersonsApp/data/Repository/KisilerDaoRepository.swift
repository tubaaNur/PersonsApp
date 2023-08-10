//
//  KisilerDaoRepository.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 10.08.2023.
//

import Foundation
import RxSwift

class KisilerDaoRepository{
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func kaydet(kisi_ad:String, kisi_tel:String) {
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    func güncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String){
        print("Kişi Güncelle: \(kisi_id)- \(kisi_ad)- \(kisi_tel)")
        
        
    }
    
    func sil(kisi_id: Int){
        print("Sil: \(kisi_id)")
        
    }
    
    func ara(aramaKelimesi:String){
        print("Kişi Ara: \(aramaKelimesi)")
        
    }
    
    func kisileriYukle(){
        
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Tuba", kisi_tel: "11111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Ebru", kisi_tel: "1231111")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Özge", kisi_tel: "11114536431")
        
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        
        kisilerListesi.onNext(liste)
    }
}
