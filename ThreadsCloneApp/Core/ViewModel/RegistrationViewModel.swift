//
//  RegistrationViewModel.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 23/11/2023.
//

import Foundation


class RegistrationViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullname = ""
    @Published  var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullName: fullname,
            userName: username)
    }
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
