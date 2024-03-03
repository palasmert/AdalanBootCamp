//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by mert palas on 3.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Yeni"
        }
        
        let appearence = UITabBarAppearance()
        appearence.backgroundColor = UIColor.systemIndigo
        
        renkDegistir(itemAppearance: appearence.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearence.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearence.compactInlineLayoutAppearance )

        
        
        tabBarController?.tabBar.standardAppearance = appearence
        tabBarController?.tabBar.scrollEdgeAppearance = appearence
    }

    func renkDegistir(itemAppearance:UITabBarItemAppearance) {
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
     //secili olmayan durumda
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
        
    }
}

