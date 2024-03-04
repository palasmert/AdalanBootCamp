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
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelStepper: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        indicator.isHidden = true

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
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelSlider.text = String(Int(sender.value))
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
    }
    
    
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum : \(mSwitch.isOn)")
        print("Slider Durum: \(slider.value)")
        print("Stepper Durum : \(stepper.value)")
    }
    
}

