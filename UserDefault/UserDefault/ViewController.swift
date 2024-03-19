//
//  ViewController.swift
//  UserDefault
//
//  Created by mert palas on 19.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Tanimlama
        let ud = UserDefaults.standard
        
        //kayit
        ud.set("Ahmet", forKey: "ad")
        ud.set(23, forKey: "yas")
        ud.set(1.78, forKey: "boy")
        ud.set(true, forKey: "bekar")
        
        let liste = ["ali","ece","mahmut"]
        ud.set(liste, forKey: "liste")
        
        let sehirler = ["16":"Bursa", "34":"istanbul"]
        ud.set(sehirler, forKey: "sehirler")
            
        //silme
        // ud.removeObject(forKey: "ad")
        
        //okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isimYok"
        print("Gelen ad: \(gelenAd)")
        let gelenYas = ud.integer(forKey: "yas")
        let gelenBoy = ud.double(forKey: "boy")
        let gelenBekar = ud.bool(forKey: "bekar")
        print("Gelen ad: \(gelenAd)")
        print("Gelen yas: \(gelenYas)")
        print("Gelen boy: \(gelenBoy)")
        print("Gelen bekar: \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        
        for a in gelenListe {
            print("Gelen liste : \(a)")
        }

        for a in liste {
            print("Gelen liste :\(a)")
        }
        
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String:String]()
        
        for (anahtar,deger) in gelenSehirler {
            print("Gelen Sehir : \(anahtar) -> \(deger)")
        }
        
        //sayac uyg
        var sayac = ud.integer(forKey: "sayac") //varsayilan deger 0
        
        sayac = sayac + 1
        ud.setValue(sayac, forKey: "sayac")
        labelSayac.text = "acilis sayisi: \(sayac)"
    }


}

