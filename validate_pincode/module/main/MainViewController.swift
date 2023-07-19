//
//  MainViewController.swift
//  validate_pincode
//
//  Created Phattarapon Jungtakarn on 19/7/2566 BE.
//  Copyright © 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class MainViewController: UIViewController {

	var presenter: MainPresenterProtocol?

    @IBOutlet weak var containerWelcomeView: UIView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
    }
    
    func initUI() {
        self.containerWelcomeView.layer.cornerRadius = 15
        self.containerWelcomeView.layer.shadowColor = UIColor.yellow.cgColor
        self.welcomeLabel.text = "Welcome \nValidate PinCode App"
        self.welcomeLabel.textColor = UIColor.black
        self.nextButton.layer.cornerRadius = 15
        self.nextButton.backgroundColor = UIColor.systemGreen
        self.nextButton.tintColor = UIColor.white
        self.nextButton.layer.borderColor = UIColor.blue.cgColor
        self.nextButton.layer.borderWidth = 1
        self.nextButton.layer.cornerRadius = 15
        self.nextButton.setTitle("Next", for: .normal)
    }

    @IBAction func onClickNextButton(_ sender: UIButton) {
        self.presenter?.notifyRouteToValidatePinCode()
    }
    
}

extension MainViewController: MainViewProtocol {
    
}