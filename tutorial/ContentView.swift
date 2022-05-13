//
//  ContentView.swift
//  tutorial
//
//  Created by natalie wolf on 5/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()

    }
}






struct Home: View {
    var body: some View {
        
        ZStack {
            
        Text("background here")
        Color(.darkGray)
        
        VStack {
            
        Text("this is my first app")
            
            .fontWeight(.heavy)
            .foregroundColor(.gray)
            .italic()
            .opacity(0.5)
    
            
        Spacer()
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Card()
            
        })
            
        Spacer()
            
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            
            Button(action:{}) {Image("donut")}
            
            Button(action:{}) {Image("donut")}
            
            Button(action:{}) {Image("donut")}
            
            Button(action:{}) {Image("donut")}
            
            
        })
            
        }
        
        
            
        }
    }
}

struct Card: View {
    var body: some View {
        let width = UIScreen.main.bounds.width
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .opacity(0.1)
                .background(
                    Color.white
                        .opacity(0.08)
                        .blur(radius:10))
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(LinearGradient(gradient: Gradient(colors:
                                [.white,
                                 .black]),
                                startPoint: .top, endPoint: .bottom)))
        .frame(width: width / 1.7, height: 270)}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()}}}
