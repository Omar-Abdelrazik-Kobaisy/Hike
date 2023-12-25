//
//  SettingsView.swift
//  Hike
//
//  Created by Omar on 20/12/2023.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcon : [String] = [
    "AppIcon-Backpack-Preview",
    "AppIcon-Camera-Preview",
    "AppIcon-Campfire-Preview",
    "AppIcon-MagnifyingGlass-Preview",
    "AppIcon-Map-Preview",
    "AppIcon-Mushroom-Preview"
    ]
    
    var body: some View {
        List{
            //MARK: - Section Header
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 66 , weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editors Choice")
                            .fontWeight(.medium )
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 66 , weight: .black))
                    Spacer()
                }
                .foregroundStyle(.linearGradient(
                    colors: [.GreenLight
                             ,.GreenMedium
                             ,.GreenDark
                            ]
                    , startPoint: .top
                    , endPoint: .bottom))
                .padding(.top)
                VStack(spacing:10){
                    Text("Where Can you find \n perfect Track")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The Hike which looks gorgeous in photo but is even better once you are actually there.\nThe Hike which looks gorgeous in photo but is even better once you are actually there. ")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.GreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,20)
                .frame(maxWidth: .infinity)
            }.listRowSeparator(.hidden)
            
            //MARK: - Section Icons
            Section{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:15) {
                        ForEach(alternateAppIcon,id: \.self){ item in
                            Button {
                                print(item + "selected")
                                UIApplication.shared.setAlternateIconName(item) { error in
                                    if let error = error {
                                        //fail
                                        print(error.localizedDescription)
                                    }else{
                                        //success
                                        
                                    }
                                }
                            } label: {
                                Image(item)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(15)
                        }.buttonStyle(.borderless)
                        }
                    }
                }//: ScrollView
                .padding(.top)
                Text("Choose your favorite app icon from the collection above")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }.listRowSeparator(.hidden)
            //MARK: - Section About
            Section(header: Text("About The App")
                    , footer: HStack{
                Spacer()
                Text("Copyright All right reserved")
                Spacer()
            }){
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "apps.iphone", rowContent: "Hike", rowLabel: "Application", rowTintColor: .blue)
                CustomeListRowView(rowIcon: "paintpalette"
                                   ,rowContent: nil
                                   ,rowLabel: "Designer"
                                   , rowTintColor: .purple
                                   ,rowLinkLabel: "webSite",
                rowLinkDestination: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-display-a-bottom-sheet")
            }
        }//: List
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
