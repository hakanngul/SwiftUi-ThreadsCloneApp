//
//  UserCell.swift
//  ThreadsCloneApp
//
//  Created by Hakan Gül on 19/11/2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            VStack (alignment: .leading) {
                Text("maxverstappen1")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Max Verstappen")
            }
            .font(.footnote)
            Spacer()
            
            Text("Folow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
    }
}

#Preview {
    UserCell()
}
