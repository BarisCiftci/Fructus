//
//  SettingView.swift
//  Fructus
//
//  Created by Baris Ciftci on 12/10/2022.
//

import SwiftUI

struct SettingView: View {
    // MARK:  - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    // MARK:  - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettinsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and, calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                GroupBox(
                label: SettinsLabelView(labelText: "Aplication", labelImage: "apps.iphone")
                ){
                    SettingRowView(name: "Developer", content: "Baris Ciftci")
                    SettingRowView(name: "Designer", content: "Baris Ciftci")
                    SettingRowView(name: "Compatibility", content: "IOS 16")
                    SettingRowView(name: "Year", content: "2022")
                    SettingRowView(name: "Website", linkLabel: "ENB Creative", linkDestination: "enbcreative.com")
                    SettingRowView(name: "Instagram", linkLabel: "@enbcreative", linkDestination: "instagram.com/enbcreative")
                    
                    
                    
                }
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                          presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}
// MARK:  - PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
