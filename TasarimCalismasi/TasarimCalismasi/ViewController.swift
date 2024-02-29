//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by mert palas on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "AnaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "YaziRenk1")!,.font:UIFont(name: "Pacifico-Regular", size: 22)!]
        
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        
        
        
    }


}

