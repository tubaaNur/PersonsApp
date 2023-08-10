//
//  PersonDetailViewModel.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 10.08.2023.
//

import Foundation

class PersonKayıtDetailViewModel{
    //Bu sayfa bize veri getirecek mi, ekranda veri görüntüleyecek miyiz ---> evet ise; rxswift le arayüze veri getirmeliyim.
    
    var k = KisilerDaoRepository()
    func kaydet(kisi_ad:String, kisi_tel:String) {
        k.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
