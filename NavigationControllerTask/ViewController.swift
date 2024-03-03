//
//  ViewController.swift
//  NavigationControllerTask
//
//  Created by Feras Alshadad on 29/02/2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    let navigateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Setup navigateButton properties
        navigateButton.setTitle("Show Details", for: .normal)
        navigateButton.backgroundColor = .systemBlue
        navigateButton.layer.cornerRadius = 10

                
        view.addSubview(navigateButton)
              
        navigateButton.snp.makeConstraints { make in
                    make.center.equalToSuperview()
                    make.width.equalTo(200)
                    make.height.equalTo(50)
                }

                 //Add target action for the button
        
        navigateButton.addTarget(self, action: #selector(navigateButtonTapped), for: .touchUpInside)
                
        title = "MainViewController"
        
            }

    @objc func navigateButtonTapped() {
        let secondVC = SecondViewController()
        secondVC.receivedData = "Welcome to Details View!"
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        }
    }




