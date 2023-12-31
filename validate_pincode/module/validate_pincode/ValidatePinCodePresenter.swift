//
//  ValidatePinCodePresenter.swift
//  validate_pincode
//
//  Created Phattarapon Jungtakarn on 19/7/2566 BE.
//  Copyright © 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class ValidatePinCodePresenter {

    weak private var view: ValidatePinCodeViewProtocol?
    var interactor: ValidatePinCodeInteractorProtocol?
    private let router: ValidatePinCodeWireframeProtocol

    init(interface: ValidatePinCodeViewProtocol, interactor: ValidatePinCodeInteractorProtocol?, router: ValidatePinCodeWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}

extension ValidatePinCodePresenter: ValidatePinCodePresenterProtocol {
    
    func notifyViewDidLoaded() {
        NotificationCenter.default.addObserver(self, selector: #selector(notifyDisplayInputTextFieldEmpty), name: .ClearTextButtonHelper, object: nil)
    }
                                               
    @objc func notifyDisplayInputTextFieldEmpty() {
        self.view?.displayInputTextFieldEmpty()
    }
    
    func notifyRouteToMain() {
        self.router.routeToMain()
    }
    
}
