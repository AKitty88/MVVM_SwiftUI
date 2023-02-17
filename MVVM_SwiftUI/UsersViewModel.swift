//
//  UsersViewModel.swift
//  MVVM_SwiftUI
//
//  Created by User on 3/2/2023.
//

import Foundation

class UsersViewModel: ObservableObject {
    @Published var users = [User]()
    let dataService: DataService
    
    init(dataService: DataService = AppDataService()) {
        self.dataService = dataService
    }
    
    func getUsers() {
        dataService.getUsers { [weak self] users in
            self?.users = users
        }
    }
}
