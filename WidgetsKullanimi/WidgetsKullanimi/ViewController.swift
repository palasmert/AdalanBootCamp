//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by mert palas on 4.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
   
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var imageView: UIImageView!
    
  
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
            
        }
    }
   
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
   
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        } else {
            print("Switch :  OFF")
        }
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Seçim :\(secilenKategori!)")
    }
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
        
    }
    
}

