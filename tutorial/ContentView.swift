//
//  ContentView.swift
//  tutorial
//
//  Created by natalie wolf on 5/12/22.
//

import SwiftUI
let screenWidth = UIScreen.main.bounds.width
public var gw: CGFloat?
public var gh: CGFloat?

class Glass {
    
    var width: CGFloat?
    var height: CGFloat?
    
    init (_ width: CGFloat, _ height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    
}
func makeGlass (_ glass: Glass) -> AnyView {
    
    var body: some View {
    ZStack {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .opacity(0.1)
            .background(
                Color.white
                    .opacity(0.08)
                    .blur(radius:10))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(LinearGradient(gradient: Gradient(colors:
                            [Color.purple,
                             Color.purple.opacity(0.5),
                             .clear,
                             .clear,
                             Color.blue]), startPoint: .topLeading,endPoint: .bottomTrailing),
                            lineWidth: 2.5).padding(2))
                    .shadow(color: .black.opacity(0.1), radius: 5, x: -5, y: -5)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
        
    }
    .frame(width: glass.width, height: glass.height)
        
    }

return AnyView(body)
}

struct ContentView: View {
    var body: some View {
        Home()
    }
    
    
}

struct Home: View {
    var body: some View {
        ZStack {
            Background()
            Content()
            
        }
        
    }
    
}

struct Background: View {
    var body: some View {
        ZStack {
            LinearGradient (gradient: Gradient(colors: [Color("BG1"), Color("BG2")]),
                            startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            GeometryReader {
                proxy in
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
                    .offset(x: -size.width / 1.8, y: size.height / 2)
                
            }
            
        }
        
    }
    
}

struct Content: View {
    var body: some View {
        VStack {
            Spacer()
            Text("title")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top)
            Text("descrip.")
                .font(.system(size: 30, weight: .thin))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.top)
            Card()
            Spacer()
            Menu()
            
        }
        
    }
    
}

struct Card: View {
    var body: some View {
        Button(action:{}){ZStack {
            let squareGlass = Glass(screenWidth/2, screenWidth/4)
            makeGlass(squareGlass)
            VStack {
                Text("START")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .regular))
                    .multilineTextAlignment(.center)
                
            }
            
        }
        
    }
    
}
}

struct Menu: View {
    var body: some View{
        HStack {
            Button(action:{}) {
                ZStack {
                Image(systemName: "circle")
                    .font(.system(size: 70))
                Image(systemName: "drop")
                
                }
                
            }
            Button(action:{}) {
                ZStack {
                    let squareGlass = Glass(screenWidth/4, screenWidth/4)
                    makeGlass(squareGlass)
                Image(systemName: "person")
                }
            
            }
            Button(action:{}) {Image(systemName: "camera")}
            Button(action:{}) {Image(systemName: "gear")}
        }
        .font(.system(size: 50, weight: .light))
        .foregroundColor(.white)
        
    }
    
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
    
}











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
 
 
 
  
     Image(systemName: "heart")
             .foregroundColor(.white)
             .font(.system(size: 75, weight: .thin))
 
*/
