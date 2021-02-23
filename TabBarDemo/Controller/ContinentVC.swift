//
//  ContinentVC.swift
//  TabBarDemo
//
//  Created by Adriana González Martínez on 2/17/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class ContinentVC: UIViewController {
    
    var currentContinent: Continent!
    var continentView: ContinentView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continentView = ContinentView(continent: currentContinent)
        continentView.button.addTarget(self, action: #selector(openNextScene), for: .touchUpInside)

        self.title = currentContinent.name
        self.view.backgroundColor = currentContinent.associatedColor
        self.view.addSubview(continentView)
        
        NSLayoutConstraint.activate([
            continentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continentView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            continentView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            continentView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor)
        ])
        
    }
    
    @objc func openNextScene(){
        let detailVC = DetailVC()
        self.navigationController?.pushViewController(detailVC, animated: true)

    }
    
}
