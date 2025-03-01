//
//  HomeView.swift
//  IndiWardrobe
//
//  Created by Vishnu Kumar on 3/1/25.
//

import SwiftUI

struct HomeView: View {
    @State private var offsetUx: CGFloat = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .top){
            Color(hex: "#F5E8D9")
                .edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Rectangle()
                        .fill(Color.black)
                        .frame(height:50)
                    
                    GeometryReader{geo in
                        Text("20% off all lehenga rentals")
                            .font(.headline)
                            .foregroundColor(.white)
                            .offset(x:offsetUx)
                            .onAppear{
                                let textWidth = geo.size.width
                                let screenWidth = UIScreen.main.bounds.width
                                
                                withAnimation(Animation.linear(duration:5).repeatForever(autoreverses: false)){
                                    offsetUx = -textWidth
                                }
                            }
                    }
                    .frame(height:50)
                    .clipped()
                }
                VStack(spacing:0){
                    Text("Welcome User!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top,10)
                    
                    Divider()
                        .frame(height:3)
                        .background(Color.black)
                }
                    
                Spacer()
                Image("IMG_2386")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200, height:200)
                Spacer()
                
                Divider()
                    .frame(height:2)
                    .background(Color(hex:"#FFFFF0"))
               
                
            }
            
        }
        
    }
    
    
    
}

