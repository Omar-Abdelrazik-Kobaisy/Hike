//
//  CustomeCircleView.swift
//  Hike
//
//  Created by Omar on 19/12/2023.
//

import SwiftUI

struct CustomeCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [.IndigoMedium
                             ,.salmonLight]
                    , startPoint: isAnimateGradient ? .topLeading : .bottomLeading
                    , endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing))
                .onAppear(perform: {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                })
            
                MotionAnimationView()
        }.frame(width: 256,height: 256)
    }
}

struct CustomeCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomeCircleView()
            .previewLayout(.sizeThatFits)
    }
}
