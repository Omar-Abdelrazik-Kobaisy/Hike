//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Omar on 19/12/2023.
//

import Foundation
import SwiftUI

struct GradientButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal , 30)
            .background(
                
                configuration.isPressed ?
                    .linearGradient(
                        colors: [.GrayMedium
                                 ,.GrayLight]
                        , startPoint: .top
                        , endPoint: .bottom) :
                        .linearGradient(
                            colors: [.GrayLight
                                     ,.GrayMedium]
                            , startPoint: .top
                            , endPoint: .bottom))
            .cornerRadius(40)
        
    }
}
