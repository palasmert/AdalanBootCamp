//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by mert palas on 5.03.2024.
//

import UIKit

class AnaSayfa: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var kisilerTableView: UITableView!
    var kisilerListesi = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
         
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "123321")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "beyza", kisi_tel: "222222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "can", kisi_tel: "333333")
        kisilerListesi.append(k1)
        kisilerListesi.append(k2)
        kisilerListesi.append(k3)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("Ana sayfaya döndük")
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
        
    }

}
extension AnaSayfa : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Kişi ara : \(searchText)")
    }
}
extension AnaSayfa : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerListesi [indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as!
        KisilerHucre
        
        hucre.labelKisiAd.text = kisi.kisi_ad
        hucre.labelKisiTel.text = kisi.kisi_tel
        
        return hucre
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silACtion = UIContextualAction(style: .destructive, title: "Sil") {_,_,_ in
            let kisi = self.kisilerListesi[indexPath.row]
            let alert = UIAlertController(title: "Silme Islemi", message: "\(kisi.kisi_ad!) silinsin mi ?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "Iptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                print("Kisi sil :\(kisi.kisi_id!)")
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        
    return UISwipeActionsConfiguration(actions: [silACtion])
    }
    
}


