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
    
    
    //HINTERGRUND---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.white]), startPoint: .bottom, endPoint: .top)
            
            //KOPF SEITE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
            VStack(spacing: 5) {
                HStack {
                    Text("ERFOLGE ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 280, alignment: .trailing)
                        .foregroundColor(.red)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                }
                .padding(.top, 20)
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                        .padding(.top, 20)
                )
                .padding(.vertical, 10)
                
                //BOX DEUTSCHER MEISTER-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                ZStack {
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            VStack {
                                Spacer()
                                ZStack {
                                    Text("DEUTSCHER MEISTER ")
                                        .font(.custom("SignPainter", size: 30))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                    Text("1 ")
                                        .font(.custom("SignPainter", size: 55))
                                        .foregroundColor(.white)
                                        .padding(.leading, -150)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("X ")
                                        .font(.custom("SignPainter", size: 40))
                                        .foregroundColor(.white)
                                        .padding(.leading, -135)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                }
                                
                                
                                
                                
                                
                                Image("schale")
                                    .resizable()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("1955 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding(.trailing, 10)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                
                                    .padding(.horizontal, 130)
                                
                                
                                Spacer()
                            }
                            
                            //BOX
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.white.opacity(0.8))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.clear, .red]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 2
                                            )
                                    )
                                
                            )
                            .frame(maxWidth: 380)
                            
                            
                            .onTapGesture {
                                selectedImage = "1955"
                                isShowingModal.toggle()
                            }
                            VStack {
                                Spacer()
                                ZStack{
                                    Text("DFB-POKALSIEGER ")
                                        .font(.custom("SignPainter", size: 30))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                    
                                    Text("1 ")
                                        .font(.custom("SignPainter", size: 55))
                                        .foregroundColor(.white)
                                        .padding(.leading, -150)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("X ")
                                        .font(.custom("SignPainter", size: 40))
                                        .foregroundColor(.white)
                                        .padding(.leading, -135)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                }
                                Image("dfb")
                                    .resizable()
                                    .frame(maxWidth: 50, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                Text("1953 ")
                                    .font(.custom("SignPainter", size: 20))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding(.trailing, 10)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                    .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                
                                    .padding(.horizontal, 130)
                                
                                
                                Spacer()
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.white.opacity(0.8))
                                    .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [Color.clear, .red]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 2
                                            )
                                    )
                                
                            )
                            .frame(maxWidth: 380)
                            
                            .onTapGesture {
                                selectedImage = "1955"
                                isShowingModal.toggle()
                                
                            }
                            VStack {
                                Spacer()
                                ZStack{
                                    Text("NIEDERRHEINPOKAL")
                                        .font(.custom("SignPainter", size: 30))
                                        .frame(maxWidth: 350, alignment: .trailing)
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                        .padding(.top, 15)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("10 ")
                                        .font(.custom("SignPainter", size: 55))
                                        .foregroundColor(.white)
                                        .padding(.leading, -150)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("X ")
                                        .font(.custom("SignPainter", size: 40))
                                        .foregroundColor(.white)
                                        .padding(.leading, -110)
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                }
                                Image("Niederpokal")
                                    .resizable()
                                    .frame(maxWidth: 80, maxHeight: 100)
                                    .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                
                                HStack{
                                    Text("1995 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                    
                                    
                                    
                                    Text("2002 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("2004 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                }
                                
                                
                                Spacer()
                                
                                HStack{
                                    Text("2008 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("2011 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("2012 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                }
                                Spacer()
                                
                                HStack{
                                    Text("2015 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("2016 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    Text("2020 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                }
                                Spacer()
                                
                                HStack{
                                    Text("2023 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: 110, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                    
                                }
                                
                            }
                            
                                //BOX
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 0)
                                                .stroke(
                                                    LinearGradient(
                                                        gradient: Gradient(colors: [Color.clear, .red]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing
                                                    ),
                                                    lineWidth: 2
                                                )
                                        )
                                    
                                )
                                .frame(maxWidth: 380)
                                
                                .onTapGesture {
                                    selectedImage = "1955"
                                    isShowingModal.toggle()
                                }
                                VStack {
                                    Spacer()
                                    ZStack{
                                        Text("MEISTER RL-WEST ")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 350, alignment: .trailing)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                        
                                        Text("1 ")
                                            .font(.custom("SignPainter", size: 55))
                                            .foregroundColor(.white)
                                            .padding(.leading, -150)
                                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                        
                                        Text("X ")
                                            .font(.custom("SignPainter", size: 40))
                                            .foregroundColor(.white)
                                            .padding(.leading, -135)
                                            .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                        
                                    }
                                    Image("702")
                                        .resizable()
                                        .frame(maxWidth: 100, maxHeight: 100)
                                        .shadow(color: Color.black.opacity(0.8), radius: 5, x: 0, y: 2)
                                    Text("2022 ")
                                        .font(.custom("SignPainter", size: 20))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding(.trailing, 10)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .trailing, endPoint: .leading))
                                        .shadow(color: Color.black.opacity(1.0), radius: 3, x: 0, y: 0)
                                    
                                        .padding(.horizontal, 130)
                                    Spacer()
                                }
                                
                                // BOX
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
                                        .shadow(color: Color.black.opacity(0.4), radius: 2, x: 3, y: 5)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 0)
                                                .stroke(
                                                    LinearGradient(
                                                        gradient: Gradient(colors: [Color.clear, .red]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing
                                                    ),
                                                    lineWidth: 2
                                                )
                                        )
                                    
                                )
                                .frame(maxWidth: 380)
                                
                                .onTapGesture {
                                    selectedImage = "1955"
                                    isShowingModal.toggle()
                                }
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

