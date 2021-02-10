//
//  ContentView.swift
//  NavigationInSwift
//
//  Created by Gokul Nair on 10/02/21.
//

import SwiftUI

struct RedCircleView: View {
    var body: some View {
        NavigationView{
            VStack {
                CircleNumberView(color: .red, number: 23)
                    .navigationTitle("Red Circle!")
                    .offset(y: -60)
                
                NavigationLink(
                    destination: BlueView(),label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                    })
            }
        }.accentColor(Color(.label))
    }
}

struct BlueView: View {
    var body: some View {
        VStack {
            CircleNumberView(color: .blue, number: 3)
                .navigationTitle("Blue Circle!")
                .offset(y: -60)
            
            NavigationLink(
                destination: GreenView(),label: {
                    Text("Next Screen")
                        .bold()
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color.orange)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                })
        }
    }
}

struct GreenView: View {
    var body: some View {
        VStack {
            CircleNumberView(color: .green, number: 90)
                .navigationTitle("Green Circle!")
                .offset(y: -60)
        }
    }
}

//Circle Maker
struct CircleNumberView: View {
    var color: Color
    var number: Int
    
    var body: some View{
        ZStack {
            Circle().frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(color)
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                .shadow(radius: 7 )
            
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RedCircleView().previewDevice("iPhone 12")
        }
    }
}
