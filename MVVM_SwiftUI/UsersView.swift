//
//  UsersView.swift
//  MVVM_SwiftUI
//
//  Created by User on 1/2/2023.
//

import SwiftUI

struct UsersView: View {
    @StateObject var viewModel: UsersViewModel
    
    init(viewModel: UsersViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
        }
        .onAppear(perform: viewModel.getUsers)
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(id: 0, name: "Sample")
        let viewModel = UsersViewModel()
        viewModel.users = [user]
        
        return UsersView(viewModel: viewModel)
    }
}
