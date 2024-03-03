//
//  SecondViewController.swift
//  NavigationControllerTask
//
//  Created by Feras Alshadad on 29/02/2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var receivedData: String?
    let textLabel = UILabel()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        title = "DetailsViewController"
        
        view.backgroundColor = .green
        
        view.addSubview(textLabel)
        textLabel.text = receivedData
    
        print(receivedData ?? "No data")
        
        textLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    
    


}
