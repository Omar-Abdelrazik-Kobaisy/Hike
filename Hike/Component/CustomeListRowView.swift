//
//  CustomeListRowView.swift
//  Hike
//
//  Created by Omar on 20/12/2023.
//

import SwiftUI

struct CustomeListRowView: View {
    @State var rowIcon : String
    @State var rowContent : String? = nil
    @State var rowLabel : String
    @State var rowTintColor : Color
    @State var rowLinkLabel : String? = nil
    @State var rowLinkDestination : String? = nil
    var body: some View {
        LabeledContent {
            
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if (rowLinkLabel != nil
                      && rowLinkDestination != nil ){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius:8)
                        .frame(width:30,height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomeListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomeListRowView(rowIcon: "paintpalette"
                               ,rowContent: nil
                               ,rowLabel: "Designer"
                               , rowTintColor: .purple
                               ,rowLinkLabel: "webSite",
            rowLinkDestination: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-display-a-bottom-sheet")
        }
    }
}
