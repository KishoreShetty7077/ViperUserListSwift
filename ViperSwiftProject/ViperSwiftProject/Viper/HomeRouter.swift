//
//  HomeRouter.swift
//  ViperSwiftProject
//
//  Created by Kishore B on 11/10/24.
//

import Foundation
import UIKit

// Object
// Entry point

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    static func start() -> AnyRouter
}

class HomeRouter: AnyRouter {
    var entry: EntryPoint?

    static func start() -> AnyRouter {
        let router = HomeRouter()

        // Assign VIP
        var view: AnyView = HomeViewController()
        var presenter: AnyPresenter = HomeViewPresenter()
        var interactor: AnyInteractor = HomeInteractor()

        view.presenter = presenter
        interactor.presenter = presenter

        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor

        router.entry = view as? EntryPoint
        return router
    }
}
