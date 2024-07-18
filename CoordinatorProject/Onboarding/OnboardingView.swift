//
//  OnboardingView.swift
//  CoordinatorProject
//
//  Created by Anton on 18.07.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
            
            
            
            ScaledImageView(name: "Снимок экрана 2024-07-18 в 14.14.58")
                .tag(0)
            ScaledImageView(name: "Cat_August_2010-4")
                .tag(1)
            ScaledImageView(name: "pexels-pixabay-45201")
                .tag(2)
            
            Button("Done"){
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black)
        .ignoresSafeArea(.all)
    }
}

#Preview {
    OnboardingView(doneRequested: { })
}
