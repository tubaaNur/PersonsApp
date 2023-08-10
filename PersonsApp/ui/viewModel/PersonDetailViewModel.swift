//
//  PersonDetailViewModel.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 10.08.2023.
//

import Foundation

var krepo = KisilerDaoRepository()
class PersonDetailViewModel{
    func güncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String){
        krepo.güncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
        
        
    }
}
