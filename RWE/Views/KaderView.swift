//
//  KaderView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.


import SwiftUI
import CoreData

struct KaderView: View {
    @EnvironmentObject var kaderViewModel: KaderViewModel
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Player.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Player.name, ascending: true)])
    
    private var players: FetchedResults<Player>
    
    var body: some View {
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
                    ForEach(kaderViewModel.kader, id: \.id) { spieler in
                        ZStack {
                            VStack {
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
                                        .frame(width: 100, height: 135, alignment: .leading)
                                        .shadow(radius: 5)
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("\(spieler.birthDate)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.birthPlace)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.previousClub)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.position)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
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
                                                    gradient: Gradient(colors: [.white, .red]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 3
                                            )
                                    )
                                    .shadow(radius: 0)
                            )
                            .frame(maxWidth: 380)
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
    }
}
