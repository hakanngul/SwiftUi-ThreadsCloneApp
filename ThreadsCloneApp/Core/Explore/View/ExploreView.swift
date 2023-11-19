//
//  ExploreView.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 19/11/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach( 0 ... 10, id:\.self) { user in
                        VStack {
                            UserCell()
                            .padding(.horizontal)
                            Divider()
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
