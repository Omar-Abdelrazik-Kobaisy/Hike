//
//  CardView.swift
//  Hike
//
//  Created by Omar on 18/12/2023.
//

import SwiftUI

struct CardView: View {
    //MARK: -Properties
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    @State private var isShowingSheet : Bool = false
    //MARK: -Functions
    func randomeImage() {
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomeBackgroundView()
            VStack {
                //MARK: - Header
                VStack (alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 55))
                        .foregroundStyle(.linearGradient(colors: [.GrayLight , .GrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            //Action: show a sheet
                            print("clicked")
                            isShowingSheet.toggle()
                        } label: {
                            CustomeButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }

                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.GrayMedium)
                }//: end Header()
                .padding(.horizontal,30)
                
                //MARK: -Main Content
                ZStack {
                    CustomeCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }//: end zStack(Content)
                //MARK: - Footer
                Button {
                    print("Button Clicked")
                    randomeImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.linearGradient(
                            colors: [.GreenLight
                                     ,.GreenMedium]
                            , startPoint: .top
                            , endPoint: .bottom))
                        .shadow(color: .black.opacity(0.3), radius: 0.2,x: 1,y: 2)
                }.buttonStyle(GradientButton())
            }//: end vStack()
        }//: end zStack (Card)
        .frame(width: 320,height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
