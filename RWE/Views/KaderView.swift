//
//  KaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.


import SwiftUI
import CoreData

struct KaderView: View {
    @EnvironmentObject var kaderViewModel: KaderViewModel
    @EnvironmentObject var abwehrViewModel: AbwehrViewModel
    @EnvironmentObject var mitteViewModel: MitteViewModel
    @EnvironmentObject var sturmViewModel: SturmViewModel
    @EnvironmentObject var trainerViewModel: TrainerViewModel
    @Environment(\.managedObjectContext) private var viewContext
    @State private var isPresented = false
    @State private var showPlayers = false
    @State private var showTorPlayers = false
    @State private var showAbwPlayers = false
    @State private var showMitPlayers = false
    @State private var showStPlayers = false
    @State private var showTrPlayers = false
    
    
    
    var body: some View {
        
        //HINTERGRUNDSCREEN
        ZStack {
            Image("externalimages-2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            
            //Obere Leiste der KaderView
            
            VStack(spacing: 5) {
                HStack {
                    Text("TEAM ")
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
                .padding(.horizontal, 20)
                
                
                
                
                ScrollView {
                    
                    //TEAMFOTO
                    VStack{
                        Button(action: {
                            self.isPresented = true
                        }) {
                            Image("teamfoto")
                                .resizable()
                                .frame(width: 380, height: 250)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(
                                            LinearGradient(
                                                gradient: Gradient(colors: [Color.clear, .red]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            ),
                                            lineWidth: 2
                                        ))
                                .sheet(isPresented: $isPresented) {
                                    
                                    // Inhalt des Sheets
                                    VStack {
                                        Text("ROT-WEISSE JUNGS 2022/2023 ")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 380, alignment: .trailing)
                                            .foregroundColor(.red)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                        Image("teamfoto")
                                            .resizable()
                                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                                            .aspectRatio(contentMode: .fit)
                                        Button("Schließen") {
                                            self.isPresented = false
                                        }
                                    }
                                    .background(
                                        Image("rwesheet")
                                        
                                            .opacity(0.4)
                                    )
                                }
                        }
                        
                        
                        Text("TOR ")
                            .onTapGesture {
                                showTorPlayers.toggle()
                            }
                            .font(.custom("SignPainter", size: 30))
                            .frame(maxWidth: 350, alignment: .trailing)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 15)
                        
                        
                        if showTorPlayers {
                            ForEach(kaderViewModel.kader, id: \.id) { spieler in
                                
                                ZStack{
                                    VStack{
                                        HStack {
                                            Text("\(spieler.number)")
                                                .font(.custom("SignPainter", size: 30))
                                                .frame(maxWidth: 350, alignment: .trailing)
                                                .foregroundColor(.white)
                                                .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                                .padding(.top, 15)
                                        }
                                        HStack(alignment: .top, spacing: 20) {
                                            Image("\(spieler.photo)")
                                                .resizable()
                                                .frame(width: 120, height: 155)
                                                .shadow(radius: 5)
                                                .background(
                                                    Color.clear
                                                        .padding(.horizontal)
                                                )
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 0)
                                                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                        .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                            
                                            
                                            VStack(alignment: .leading, spacing: 15) {
                                                Text("\(spieler.name)")
                                                    .font(.custom("SignPainter", size: 25))
                                                    .foregroundColor(.red)
                                                
                                                Text("\(spieler.birthDate)")
                                                    .font(.custom("SignPainter", size: 17))
                                                    .foregroundColor(.black)
                                                Text("\(spieler.birthPlace)")
                                                    .font(.custom("SignPainter", size: 17))
                                                    .foregroundColor(.black)
                                                Text("\(spieler.previousClub)")
                                                    .font(.custom("SignPainter", size: 17))
                                                    .foregroundColor(.black)
                                                Text("\(spieler.since)")
                                                    .font(.custom("SignPainter", size: 20))
                                                    .foregroundColor(.red)
                                                Spacer()
                                            }
                                        }
                                        .padding(.horizontal, 20)
                                    }
                                    .background(
                                        RoundedRectangle(cornerRadius: 0)
                                            .fill(Color.white.opacity(0.8))
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
                                            .shadow(radius: 0)
                                            .frame(width: 380)
                                    )
                                    
                                    .padding(5)
                                }
                            }
                            
                        }
                        
                    }
                    Text("ABWEHR ")
                        .onTapGesture {
                            showAbwPlayers.toggle()
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                    
                    if showAbwPlayers {
                        ForEach(abwehrViewModel.kader, id: \.id) { spieler in
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("\(spieler.number)")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 350, alignment: .trailing)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                    }
                                    HStack(alignment: .top, spacing: 20) {
                                        Image("\(spieler.photo)")
                                            .resizable()
                                            .frame(width: 120, height: 155)
                                            .shadow(radius: 5)
                                            .background(
                                                Color.clear
                                                    .padding(.horizontal)
                                            )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                    .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 15) {
                                            Text("\(spieler.name)")
                                                .font(.custom("SignPainter", size: 25))
                                                .foregroundColor(.red)
                                            
                                            Text("\(spieler.birthDate)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.birthPlace)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.previousClub)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.since)")
                                                .font(.custom("SignPainter", size: 20))
                                                .foregroundColor(.red)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
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
                                        .shadow(radius: 0)
                                        .frame(width: 380)
                                )
                                
                                .padding(5)
                            }
                        }
                        
                    }
                    
                    
                    
                    Text("MITTELFELD ")
                        .onTapGesture {
                            showMitPlayers.toggle()
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                    
                    if showMitPlayers {
                        ForEach(mitteViewModel.kader, id: \.id) { spieler in
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("\(spieler.number)")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 350, alignment: .trailing)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                    }
                                    HStack(alignment: .top, spacing: 20) {
                                        Image("\(spieler.photo)")
                                            .resizable()
                                            .frame(width: 120, height: 155)
                                            .shadow(radius: 5)
                                            .background(
                                                Color.clear
                                                    .padding(.horizontal)
                                            )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                    .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 15) {
                                            Text("\(spieler.name)")
                                                .font(.custom("SignPainter", size: 25))
                                                .foregroundColor(.red)
                                            
                                            Text("\(spieler.birthDate)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.birthPlace)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.previousClub)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.since)")
                                                .font(.custom("SignPainter", size: 20))
                                                .foregroundColor(.red)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
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
                                        .shadow(radius: 0)
                                        .frame(width: 380)
                                )
                                
                                .padding(5)
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    Text("STURM ")
                        .onTapGesture {
                            showStPlayers.toggle()
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                    
                    if showStPlayers {
                        ForEach(sturmViewModel.kader, id: \.id) { spieler in
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("\(spieler.number)")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 350, alignment: .trailing)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                    }
                                    HStack(alignment: .top, spacing: 20) {
                                        Image("\(spieler.photo)")
                                            .resizable()
                                            .frame(width: 120, height: 155)
                                            .shadow(radius: 5)
                                            .background(
                                                Color.clear
                                                    .padding(.horizontal)
                                            )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                    .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 15) {
                                            Text("\(spieler.name)")
                                                .font(.custom("SignPainter", size: 25))
                                                .foregroundColor(.red)
                                            
                                            Text("\(spieler.birthDate)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.birthPlace)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.previousClub)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.since)")
                                                .font(.custom("SignPainter", size: 20))
                                                .foregroundColor(.red)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
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
                                        .shadow(radius: 0)
                                        .frame(width: 380)
                                )
                                
                                .padding(5)
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    Text("TRAINER ")
                        .onTapGesture {
                            showTrPlayers.toggle()
                        }
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 350, alignment: .trailing)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .padding(.top, 15)
                    
                    if showTrPlayers {
                        ForEach(trainerViewModel.kader, id: \.id) { spieler in
                            
                            ZStack{
                                VStack{
                                    HStack {
                                        Text("\(spieler.number)")
                                            .font(.custom("SignPainter", size: 30))
                                            .frame(maxWidth: 350, alignment: .trailing)
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.red]), startPoint: .leading, endPoint: .trailing))
                                            .padding(.top, 15)
                                    }
                                    HStack(alignment: .top, spacing: 20) {
                                        Image("\(spieler.photo)")
                                            .resizable()
                                            .frame(width: 120, height: 155)
                                            .shadow(radius: 5)
                                            .background(
                                                Color.clear
                                                    .padding(.horizontal)
                                            )
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 0)
                                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                                                    .shadow(color: Color.white.opacity(1.0), radius: 5, x: 0, y: 2))
                                        
                                        
                                        VStack(alignment: .leading, spacing: 15) {
                                            Text("\(spieler.name)")
                                                .font(.custom("SignPainter", size: 25))
                                                .foregroundColor(.red)
                                            
                                            Text("\(spieler.birthDate)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.birthPlace)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.previousClub)")
                                                .font(.custom("SignPainter", size: 17))
                                                .foregroundColor(.black)
                                            Text("\(spieler.since)")
                                                .font(.custom("SignPainter", size: 20))
                                                .foregroundColor(.red)
                                            Spacer()
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 0)
                                        .fill(Color.white.opacity(0.8))
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
                                        .shadow(radius: 0)
                                        .frame(width: 380)
                                )
                                
                                .padding(5)
                            }
                        }
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
            }
        }
    }
}


struct KaderView_Previews: PreviewProvider {
    static var previews: some View {
        KaderView()
            .environmentObject(KaderViewModel())
            .environmentObject(AbwehrViewModel())
            .environmentObject(MitteViewModel())
            .environmentObject(SturmViewModel())
            .environmentObject(TrainerViewModel())
        
        
    }
}
