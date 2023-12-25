//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Omar on 19/12/2023.
//

import SwiftUI

struct MotionAnimationView: View {
    
    //MARK: - Prooerties
    @State private var randomeCircle : Int = Int.random(in: 6...12)
    @State private var isAnimating : Bool = false
    //MARK: -Functions
    //MARK: - RandomCoordinate
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    //MARK: - RandomSize
    func randomSize() -> CGFloat {
        CGFloat.random(in: 4...80)
    }
    //MARK: - RandomScale
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    //MARK: - RandomSpeed
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    //MARK: - RandomDelay
    func randomDelay() -> Double{
        Double.random(in: 1...3)
    }
    var body: some View {
        ZStack{
            ForEach(0...randomeCircle , id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .frame(width: randomSize())
                    .position(x:randomCoordinate()
                              ,y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25).repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())) {
                            isAnimating = true
                        }
                    }
            }
        }
        .frame(width: 256,height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
            MotionAnimationView()
            .background(
            Circle()
            )
    }
}
