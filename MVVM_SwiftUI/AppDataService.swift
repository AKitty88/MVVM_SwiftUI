//
//  AppDataService.swift
//  MVVM_SwiftUI
//
//  Created by User on 3/2/2023.
//

import Foundation

protocol DataService {
    func getUsers(completion: @escaping([User]) -> Void)
}

class AppDataService: DataService {
    func getUsers(completion: @escaping([User]) -> Void) {
        DispatchQueue.main.async {
            completion([
                User(id: 1, name: "Kyle"),
                User(id: 2, name: "Jamal"),
                User(id: 3, name: "Kyle")
            ])
        }
    }
}
