//
//  CustomeButtonView.swift
//  Hike
//
//  Created by Omar on 19/12/2023.
//

import SwiftUI

struct CustomeButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(.linearGradient(
                    colors: [.white
                             ,.GreenLight
                             ,.GreenMedium]
                    , startPoint: .top
                    , endPoint: .bottom))
                Circle()
                .stroke(.linearGradient(
                    colors: [.GrayLight
                             ,.GrayMedium]
                    , startPoint: .top
                    , endPoint: .bottom)
                        ,lineWidth: 4)
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .foregroundStyle(.linearGradient(
                    colors: [.GrayLight
                             ,.GrayMedium]
                    , startPoint: .top
                    , endPoint: .bottom))
        }
        .frame(width: 60,height: 60)
    }
}

struct CustomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
