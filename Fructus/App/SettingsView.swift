//
//  SettingsView.swift
//  Fructus
//
//  Created by Tako Menteshashvili on 29.07.22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {

                    GroupBox(
                    label: SettingslabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                               Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                        
                    }
                    
                    GroupBox(
                        label: SettingslabelView(labelText: "Customization", labelImage: "paintbrush")
                        )
                          {
                              Divider().padding(.vertical, 4)
                              Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                  .padding(.vertical, 8)
                                  .frame(minHeight: 60)
                                  .layoutPriority(1)
                                  .font(.footnote)
                                  .multilineTextAlignment(.leading)
                              
                              Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                  Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                } else {
                                  Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                                }
                              }
                              .padding()
                              .background(
                                Color(UIColor.tertiarySystemBackground)
                                  .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                              )
                              
                          }
                    
                    GroupBox(
                        label: SettingslabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                    ) {
                        SettingsRowView(name: "Developer", content: "Tako Mentesahshvili")
                        SettingsRowView(name: "Designer", content: "Robert Peters")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Udemy", linkdestination: "udemy.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@TakoMenteshash4", linkdestination: "twitter.com/TakoMenteshash4")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.0")

                    }
                    
                    
                    
                }
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            
    }
}
