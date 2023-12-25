//
//  CustomeBackgroundView.swift
//  Hike
//
//  Created by Omar on 18/12/2023.
//

import SwiftUI

struct CustomeBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. Depth
            Color.GreenDark
                .cornerRadius(40)
                .offset(y: 12)
            //MARK: - 2. Light
            Color.GreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.8)
            //MARK: - 1. Surface
            LinearGradient(colors: [.GreenLight
                                    ,.GreenMedium], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
            
        }
    }
}

struct CustomeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeBackgroundView()
            .padding()
    }
}
