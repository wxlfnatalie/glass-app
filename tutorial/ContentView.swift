//
//  ContentView.swift
//  tutorial
//
//  Created by natalie wolf on 5/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()}}

struct Home: View {
    var body: some View {
        ZStack {
            Background()
            Card()}}}

struct Background: View {
    var body: some View {
        ZStack {
            LinearGradient (gradient: Gradient(colors: [Color("BG1"), Color("BG2")]),
                            startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            GeometryReader {proxy in
                let size = proxy.size
                Color.black
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                Circle()
                    .fill(Color("Purple"))
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
                Circle()
                    .fill(Color("LightBlue"))
                    .padding(50)
                    .blur(radius: 150)
                    .offset(x: size.width / 1.8, y: -size.height / 2)
                Circle()
                    .fill(Color("LightBlue"))
                    .padding(50)
                    .blur(radius: 90)
                    .offset(x: size.width / 1.8, y: size.height / 2)
                Circle()
                    .fill(Color("Purple"))
                    .padding(100)
                    .blur(radius: 110)
                    .offset(x: size.width / 1.8, y: size.height / 2)
                Circle()
                    .fill(Color("Purple"))
                    .padding(100)
                    .blur(radius: 110)
                    .offset(x: -size.width / 1.8, y: size.height / 2)}}}}



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
                                [Color.purple,
                                 Color.purple.opacity(0.5),
                                 .clear,
                                 .clear,
                                 Color.blue]), startPoint: .topLeading,endPoint: .bottomTrailing),
                                lineWidth: 2.5).padding(2))
                        .shadow(color: .black.opacity(0.1), radius: 5, x: -5, y: -5)
                        .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
            VStack {
                Image(systemName: "heart")
                    .font(.system(size: 75, weight: .thin))}}
            .frame(width: width / 1.7, height: 270)}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()}}















            /*VStack {
            Text("this is my first app")
                .fontWeight(.heavy)
                .foregroundColor(.gray)
                .italic()
                .opacity(0.5)
            Spacer()
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                Card() })
            Spacer()
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                Button(action:{}) {Image("donut")}
                Button(action:{}) {Image("donut")}
                Button(action:{}) {Image("donut")}
                Button(action:{}) {Image("donut")}})}}}}
*/
