//
//  TitelView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//
import SwiftUI

struct TitelView: View {
    @State private var isShowingModal = false
    @State private var selectedImage: String = ""
    
    var body: some View {
        ZStack {
            Image("screen5")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        VStack {
                            Spacer()
                            ZStack {
                                Text("DEUTSCHER MEISTER ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(Color.red, lineWidth: 0.5))
                                    
                                            
                            }
                                Image("schale")
                                    .resizable()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("1955 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    
                                Spacer()
                            }
                            .frame(maxWidth: 380)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                            .onTapGesture {
                                selectedImage = "1955"
                                isShowingModal.toggle()
                            }
                            VStack {
                                Spacer()
                                ZStack{
                                    Text("DFB-POKALSIEGER ")
                                        .font(.custom("SignPainter", size: 20))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundColor(.red)
                                        .background(Color.white)
                                        
                                }
                                Image("dfb")
                                    .resizable()
                                    .frame(maxWidth: 50, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("1953 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                Spacer()
                            }
                            .frame(maxWidth: 380)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                            .onTapGesture {
                                selectedImage = "rwe_1953"
                                isShowingModal.toggle()
                            }
                        VStack {
                            Spacer()
                            ZStack{
                                Text("NIEDERRHEINPOKAL")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                            }
                            Image("Niederpokal")
                                .resizable()
                                .frame(maxWidth: 80, maxHeight: 100)
                                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                            
                            HStack{
                                Text("1995 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2002 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2004 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("2008 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2011 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2012 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                            }
                            Spacer()
                            
                            HStack{
                                Text("2015 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2016 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                
                                Text("2020 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                            }
                            Spacer()
                            
                        
                            }
                            .frame(maxWidth: 380)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                            .onTapGesture {
                                selectedImage = "pokal1"
                                isShowingModal.toggle()
                            }
                            VStack {
                                Spacer()
                                ZStack{
                                    Text("MEISTER RL-WEST ")
                                        .font(.custom("SignPainter", size: 20))
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .foregroundColor(.red)
                                        .background(Color.white)
                                }
                                Image("westpokal")
                                    .resizable()
                                    .frame(maxWidth: 120, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("2022 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                Spacer()
                            }
                            .frame(maxWidth: 380)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)).shadow(radius: 5))
                            .onTapGesture {
                                selectedImage = "pokal2"
                                isShowingModal.toggle()
                            }
                        }
                    }
                }
            }
        }
    
    
    
    
    struct TitelView_Previews: PreviewProvider {
        static var previews: some View {
            TitelView()
        }
        
    }
}
