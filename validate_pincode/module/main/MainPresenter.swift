//
//  MainPresenter.swift
//  validate_pincode
//
//  Created Phattarapon Jungtakarn on 19/7/2566 BE.
//  Copyright © 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class MainPresenter {

    weak private var view: MainViewProtocol?
    var interactor: MainInteractorProtocol?
    private let router: MainWireframeProtocol

    init(interface: MainViewProtocol, interactor: MainInteractorProtocol?, router: MainWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}

extension MainPresenter: MainPresenterProtocol {
    
    
    func notifyRouteToValidatePinCode() {
        self.router.routeToValidatePinCode()
    }
    
}
