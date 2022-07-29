//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 29.07.22.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel:  String? = nil
    var linkdestination: String? = nil
    
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name) .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkdestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkdestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                
                else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Tako")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
