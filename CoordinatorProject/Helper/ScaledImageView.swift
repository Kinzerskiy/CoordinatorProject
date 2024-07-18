//
//  ScaledImageView.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    var body: some View {
        Image(name)
        .resizable()
        .scaledToFit()
        
    }
}

//#Preview {
//    ScaledImageView(name: "")
//}
