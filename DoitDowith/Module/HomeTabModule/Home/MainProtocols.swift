//
//  MainProtocols.swift
//  DoitDowith
//
//  Created by 김영균 on 2022/06/26.
//

import Foundation
import UIKit

protocol MainPresenterProtocol: AnyObject {
    var view: MainViewProtocol? { get set }
    var interactor: MainInteractorInputProtocol? { get set }
    var wireframe: MainWireFrameProtocol? { get set }
    // VIEW -> PRESENTER
    func viewDidLoad()
}

protocol MainViewProtocol: AnyObject {
    // PRESNETER -> VIEW
}

// Presenter: Interactor야 데이터 내놔
protocol MainInteractorInputProtocol: AnyObject {
    var presenter: MainInteractorOutputProtocol? { get set }
    var service: MainServiceInputProtocol? { get set }
    // Presenter -> Interactor
    // func fetchUserList()
}

protocol MainInteractorOutputProtocol: AnyObject {
    // INTERACTOR -> PRESENTER
    // func didFetchUserList(_ userList: [User])
    // func onError()
}

protocol MainWireFrameProtocol: AnyObject {
    static func createUserListModule() -> UIViewController
    // PRESENTER -> WIREFRAME
    // func presentUserDetail(from view: UserListViewProtocol, with user: User)
}

protocol MainServiceInputProtocol: AnyObject {
    var interactor: MainServiceOutputProtocol? { get set }
    // INTERACTOR -> SERVICE
    // func fetchUserList()
}

protocol MainServiceOutputProtocol: AnyObject {
    // SERVICE -> INTERACTOR
    // func onUserListFetched(_ users: [User])
    // func onError()
}
