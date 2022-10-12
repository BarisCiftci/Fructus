//
//  SettinsLabelView.swift
//  Fructus
//
//  Created by Baris Ciftci on 12/10/2022.
//

import SwiftUI

struct SettinsLabelView: View {
    
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
// MARK: - PREVIEW
struct SettinsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettinsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
