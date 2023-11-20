//
//  ProfileThreadFilter.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 20/11/2023.
//

import Foundation


enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int {return self.rawValue}
}
