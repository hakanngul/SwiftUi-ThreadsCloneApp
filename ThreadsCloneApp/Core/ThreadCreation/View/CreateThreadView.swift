//
//  CreateThreadView.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 19/11/2023.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("maxverstappen1")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread...", text: $caption,
                                  axis: .vertical
                        )
                       
                    }
                    .font(.footnote)
                    Spacer()
                    if !caption.isEmpty {
                        Button(action: {
                            caption = ""
                        }, label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        })
                    }
                    
                }
                Spacer()
            }
            .padding()            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                })
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Button("Post") {
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(
                        colorScheme == .dark ? .white : .black
                    )
                })
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
