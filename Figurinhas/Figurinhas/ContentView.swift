//
//  ContentView.swift
//  Figurinhas
//
//  Created by Darielton Alves da Silva on 12/07/22.
//

import SwiftUI

struct ContentView: View {
        
    @State var itensNaColecao: Int = 0
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
                    
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"Problema em dobro\"")
                    
                    
            }
            
            HStack {
            // Como usamos o scaledToFit, ao ajustarmos a largura, a altura é ajustada automaticamente.
            Image("figura_01")
                .resizable()
                .scaledToFit()
                .frame(width: 75)
            
                VStack (alignment: .leading) {
                    
                    HStack {
                        Image(systemName: "lifepreserver")
                           .foregroundColor(Color.green)
                           .frame(width: 30)
                           .font(.system(size: 30))
                           
                    Text("Vidas: ")
                    Text("2")
                        .padding(.trailing)
                    }
                    
                    HStack {
                    
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .frame(width: 30)
                            .font(.system(size: 30))
                            
                        Text("Potência: ")
                        Text("60%")
                        
                    }
                }
                
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            
            HStack {
                Spacer()
                Button {
                    itensNaColecao += 1
                    
                } label: {
                    Text("Na sua coleção: \(itensNaColecao)")
                        .padding()
                        .background(.green)
                        
                }
                    .cornerRadius(30)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
