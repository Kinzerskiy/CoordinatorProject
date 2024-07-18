//
//  FirstDetailView.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI

struct FirstDetailView: View {
    @ObservedObject var viewModel: FirstTabViewModel
    
    
    var body: some View {
        
        
        VStack {
            Text("First Ditail")
            
            TextField("name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("email", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
        }
        .padding()
    }
}

#Preview {
    FirstDetailView(viewModel: FirstTabViewModel())
}
