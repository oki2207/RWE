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
            
            VStack(spacing: 3) {
                HStack {
                    Text("TEAM ")
                        .font(.custom("SignPainter", size: 30))
                        .frame(maxWidth: 390, alignment: .trailing)
                        .foregroundColor(.red)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .leading, endPoint: .trailing))
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color.clear, .red]), startPoint: .center, endPoint: .trailing), lineWidth: 2)
                        .shadow(color: Color.red.opacity(0.3), radius: 0, x: 0, y: 2)
                )
                .padding(.horizontal, 5)
                
                    ScrollView {
                        ForEach(kaderViewModel.kader, id: \.id) { spieler in
                            ZStack {
                                HStack {
                                    Image("\(spieler.photo)")
                                        .resizable()
                                        .frame(width: 100, height: 135)
                                        .shadow(radius: 5)
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("\(spieler.name)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.birthDate)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.number)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        Text("\(spieler.birthPlace)")
                                            .font(.custom("SignPainter", size: 16))
                                            .foregroundColor(.black)
                                        
                                            .padding(.horizontal, 200)
                                        Spacer()
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
    }



struct KaderView_Previews: PreviewProvider {
    static var previews: some View {
        KaderView()
            .environmentObject(KaderViewModel())
    }
}
