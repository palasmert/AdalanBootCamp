//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by mert palas on 27.02.2024.
//

import UIKit

class AnaSayfaVC: UIViewController {
    @IBOutlet weak var labelAnaSayfa: UILabel!
    
    override func viewDidLoad() {//uyg ilk açıldığında çalışır ve 1 kez çalışır
        super.viewDidLoad()
        labelAnaSayfa.text  = "Hoşgeldiniz"
        print("viewdidload calisti")
    }
    override func viewWillAppear(_ animated: Bool) { // sayfa her göründüğünde calisir
        print("viewwwillappear calisti")
    }
    override func viewWillDisappear(_ animated: Bool) { // sayfa her görünmez olduğunda calisir
        print("viewwilldisappear calisti")
    }
    
    
    @IBAction func buttonYap(_ sender: Any) {
        labelAnaSayfa.text  = "Merhaba"

    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "mert", yas: 28, boy: 1.89, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
   
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       print("prepare metodu calisti")
        
        if segue.identifier == "oyunEkraninaGecis" {
                print("oyun ekranina gecis calisti")
            
            if let veri = sender as? Kisiler {
                print("veri\(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
            
        }
        }
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("add secildi")
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
print("save secvildi")
    }
}

