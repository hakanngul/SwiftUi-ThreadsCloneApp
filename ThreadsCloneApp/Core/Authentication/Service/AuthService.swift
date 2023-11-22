//
//  AuthService.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 23/11/2023.
//

import Foundation
import Firebase
class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            
            debugPrint("DEBUG: Logged with user \(result.user.uid)")
        } catch {
            debugPrint("DEBUG: Failed to log in user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws {
        
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            
            debugPrint("DEBUG: Created user \(result.user.uid)")
        } catch {
            debugPrint("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
        
    }
}
