//
//  HomeInteractor.swift
//  ViperSwiftProject
//
//  Created by Kishore B on 11/10/24.
//

import Foundation

// object
// protocol
// ref to presenter

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    func getUsers()
}

class HomeInteractor: AnyInteractor {
    var presenter: AnyPresenter?

    func getUsers() {
        print("Start fetching users")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchUsers(with: .failure(FetchError.failed))
                return
            }

            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(users))
            } catch {
                self?.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
        }

        task.resume()
    }
}
