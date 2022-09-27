//
//  OnboardingView.swift
//  Fructus
//
//  Created by Baris Ciftci on 27/09/2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
                FruitCardView()
            }//:LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 16)
        
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
