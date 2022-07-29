//
//  SettingslabelView.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 29.07.22.
//

import SwiftUI

struct SettingslabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingslabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingslabelView(labelText: "fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
