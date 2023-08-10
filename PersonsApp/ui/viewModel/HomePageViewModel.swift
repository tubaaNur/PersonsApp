//
//  HomePageViewModel.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 10.08.2023.
//

import Foundation
import RxSwift

class HomePageViewModel{
    
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    init(){
        kisilerListesi = krepo.kisilerListesi
    }
    
    func sil(kisi_id: Int){
        krepo.sil(kisi_id: kisi_id)
        kisileriYukle()
    }
    
    func ara(aramaKelimesi:String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
        
    }
    
    func kisileriYukle(){
        
        krepo.kisileriYukle()
    }
}
