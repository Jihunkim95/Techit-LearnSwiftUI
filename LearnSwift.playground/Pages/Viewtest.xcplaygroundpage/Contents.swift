//: [Previous](@previous)
import UIKit
import SwiftUI
import PlaygroundSupport

struct ExampleView :View {
    @State private var rotation: Double = 0
    @State private var rotationTwo: Double = 0
    var body: some View {
        VStack{
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .foregroundStyle(Color.yellow)
                .rotationEffect(.degrees(rotation))
                .rotationEffect(.degrees(rotationTwo))
                .animation(.linear(duration: 0.5), value:rotation)
                .animation(.linear(duration: 0.5), value:rotationTwo)
            Rectangle()
                  .fill(Color.blue)
                  .frame(height: 5)
            
            
            HStack {
                Button(action: {
                    rotation = (rotation < 720 ? rotation + 60 : 0)
                },label: {Image(systemName:"arcade.stick.and.arrow.left").resizable()
                        .frame(width: 50.0, height: 50.0)
                        .foregroundStyle(Color.red)
                    }).position(x: 50, y: 20)
                
                Button(action: {
                    rotationTwo = (rotationTwo < 720 ? rotationTwo - 60 : 0)
                },label: {Image(systemName:"arcade.stick.and.arrow.right").resizable()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundStyle(Color.red)
                    }).position(x: 90, y: 20)
                
                Image(systemName:"figure.mind.and.body")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                    .foregroundStyle(Color.black)
                    .position(x: -45, y: 20)
            }

        }
        
    }
}
PlaygroundPage.current.setLiveView( ExampleView().padding(100) )

//: [Next](@next)
