//
//  ContentView.swift
//  shapeFace
//
//  Created by test on 2024/1/4.
//

import SwiftUI
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}
struct ContentView: View {
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 80, height: 400)
                .foregroundStyle(Color(red: 0.837, green: 0.623, blue: 0.454))
                .offset(y:10)
            Capsule()
                .frame(width: 300, height: 450)
                .foregroundStyle(.gray)
                .offset(y:400)
            Capsule()
                .frame(width: 250, height: 300)
                .foregroundStyle(Color(red: 0.837, green: 0.623, blue: 0.454))
            //            Rectangle()
            //                .frame(width: 300, height: 300)
            //                .foregroundStyle(.brown)
            
            Group{//眉毛
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width:70, height:25)
                    .offset(x:50,y:0)
                    .rotationEffect(.degrees(-15))
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width:70, height:25)
                    .offset(x:-50,y:0)
                    .rotationEffect(.degrees(15))
            }
            Group{//嘴巴
                Capsule()
                    .foregroundStyle(Color(red: 0.761, green: 0.448, blue: 0.325))
                    .frame(width:40, height:7)
                    
                    .rotationEffect(.degrees(-80))
                    .offset(x:30,y:100)
                Capsule()
                    .foregroundStyle(Color(red: 0.761, green: 0.448, blue: 0.325))
                    .frame(width:40, height:7)
                    
                    .rotationEffect(.degrees(80))
                    .offset(x:-30,y:100)
                Capsule()
                    .foregroundStyle(Color(red: 0.761, green: 0.448, blue: 0.325))
                    .frame(width:60, height:10)
                    
                    
                    .offset(x:0,y:100)
            }
            Group{//陰影
                Capsule()
                    .foregroundStyle(Color(hue: 0.074, saturation: 0.456, brightness: 0.804))
                    .frame(width:10, height:70)
                    .rotationEffect(.degrees(-10))
                    .offset(x:100,y:0)
                Capsule()
                    .foregroundStyle(Color(hue: 0.074, saturation: 0.456, brightness: 0.804))
                    .frame(width:10, height:70)
                    .rotationEffect(.degrees(10))
                    .offset(x:-100,y:0)
                Capsule()
                    .foregroundStyle(Color(hue: 0.074, saturation: 0.456, brightness: 0.804))
                    .frame(width:10, height:70)
                    .rotationEffect(.degrees(30))
                    .offset(x:70,y:100)
                Capsule()
                    .foregroundStyle(Color(hue: 0.074, saturation: 0.456, brightness: 0.804))
                    .frame(width:10, height:70)
                    .rotationEffect(.degrees(-30))
                    .offset(x:-70,y:100)
                
                
            }
            Group{//頭髮
                Rectangle()
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .frame(width: 70, height: 300)
                    .rotationEffect(.degrees(45))
                    .offset(x:0,y:0)
                Rectangle()
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .frame(width: 70, height: 300)
                    .rotationEffect(.degrees(65))
                    .offset(x:10,y:0)
                Rectangle()
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .frame(width: 70, height: 300)
                    .rotationEffect(.degrees(85))
                    .offset(x:20,y:0)
                Rectangle()
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .frame(width: 70, height: 300)
                    .rotationEffect(.degrees(105))
                    .offset(x:30,y:0)
                Rectangle()
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .frame(width: 70, height: 150)
                    .rotationEffect(.degrees(45))
                    .offset(x:40,y:0)
                Capsule()
                    .frame(width: 170, height: 280)
                    .foregroundStyle(Color(red: 0.156, green: 0.079, blue: 0.067))
                    .rotationEffect(.degrees(70))
                    .offset(x:30,y:-15)
            }.offset(x:-40,y:-120)
            Group{//眼睛
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 40)
                    .offset(x:-50,y:15)
                Circle()
                    .frame(width: 20)
                    .offset(x:-50,y:15)
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 40)
                    .offset(x:50,y:15)
                Circle()
                    .frame(width: 20)
                    .offset(x:50,y:15)
            }
            Group{
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width:70, height:25)
                    .offset(x:50,y:0)
                    .rotationEffect(.degrees(-15))
                Rectangle()
                    .foregroundStyle(.black)
                    .frame(width:70, height:25)
                    .offset(x:-50,y:0)
                    .rotationEffect(.degrees(15))
            }
            Group{//球棒
                Capsule()
                    .frame(width: 70, height: 300)
                    .foregroundStyle(.brown)
                Capsule()
                    .frame(width: 30, height: 300)
                    .foregroundStyle(.brown)
                    .offset(y:100)
                Capsule()
                    .frame(width: 25, height: 145)
                    .foregroundStyle(.brown)
                    .offset(x:-55,y:180)
                    .rotationEffect(.degrees(-15))
                Capsule()
                    .frame(width: 25, height: 145)
                    .foregroundStyle(.brown)
                    .offset(x:55,y:180)
                    .rotationEffect(.degrees(15))
                Capsule()
                    .frame(width:30, height: 70)
                    .foregroundStyle(.brown)
                    .rotationEffect(.degrees(-90))
                    .offset(y:250)
            }.rotationEffect(.degrees(45))
                .offset(x:100,y:150)
            
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
