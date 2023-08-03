//
//  ViewController.swift
//  PersonsApp
//
//  Created by Tuba Nur  on 31.07.2023.
//

import UIKit

class HomePage: UIViewController{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var personTableView: UITableView!
    
    var personList = [Kisiler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self //Yetkilendirme. Protokollerin en önemli kısmı.
        personTableView.delegate = self
        personTableView.dataSource = self
        
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Tuba", kisi_tel: "11111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Ebru", kisi_tel: "1231111")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Özge", kisi_tel: "11114536431")
        
        personList.append(k1)
        personList.append(k2)
        personList.append(k3)
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //Performsegueyi tetikler
        if segue.identifier == "toDetail"{
            if let kisi = sender as? Kisiler{
                let gidilecekVC = segue.destination as! PersonDetail //Downcasting
                gidilecekVC.kisi = kisi 
            }
            
            
        }
    }
    
    }

extension HomePage : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi ara: \(searchText)")
    }
}

extension HomePage : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = personList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell") as! PersonsCell
        
        cell.labelPersonName.text = person.kisi_ad
        cell.labelPersonTel.text = person.kisi_tel
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: person)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // left- start(sol ile aynı)-leading()
    // right- end- trailing
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){contextualAction,view,bool in
            let person = self.personList[indexPath.row]
         
            let alert = UIAlertController(title: "Delete Process", message: "\(person.kisi_ad!) silinsin mi?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "Okay", style: .destructive){
                action in print("Kişi sil : \(person.kisi_id!)")
            }
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
