//
//  ContentView.swift
//  Aula2Desafio
//
//  Created by Student04 on 28/07/23.
//

import SwiftUI


/*let cores = [0:["Baixo peso", "#83c635"],
             1:["Normal", "#c0d90b"],
             2: ["Sobre peso", "#fca500"],
             3:["Obesidade","#f67600"]];*/
struct ContentView: View {
    @State var imcScore = Float();
    @State var imcResult: String = "IMC";
    @State var peso = Float();
    @State var altura = Float();
    @State var backgroundColor: Color = Color("default");
    
    var body: some View {
        VStack {
            VStack
            {
                Text("Calculadora de IMC").font(.largeTitle)
                TextField("Peso", value: $peso, format: .number)
                   .textFieldStyle(.roundedBorder)
                   .padding().keyboardType(.decimalPad) .multilineTextAlignment(TextAlignment.center)
                TextField("Altura", value: $altura, format: .number)
                   .textFieldStyle(.roundedBorder)
                   .padding().keyboardType(.decimalPad) .multilineTextAlignment(TextAlignment.center)
                
                Button{
                    
                    imcScore = peso/(altura * altura)
                    switch imcScore {
                    case _ where imcScore<18.5 && imcScore > 0:
                        
                        imcResult = "Baixo peso"
                        backgroundColor = Color("Baixo Peso")
                    case _ where imcScore < 25:
                        imcResult = "Normal"
                        backgroundColor = Color("default")
                    case _ where imcScore < 30:
                        imcResult = "Sobrepeso"
                        backgroundColor = Color("Sobrepeso")
                    case _ where imcScore > 30:
                        imcResult = "Obesidade"
                        backgroundColor = Color("Obesidade")
                    default:
                        print("ERROR")
                    }
                }label:{
                    Text("Calcular")
                        .padding(.horizontal, 25.0).padding(.vertical,10.0)
                }.frame(width:.infinity,height:.infinity).background(Color.blue).foregroundColor(.white).font(.headline).cornerRadius(5)
                
            }
            .padding(.top, 50.0)
            Spacer()
            VStack
            {
                Text("\(imcResult)").fontWeight(.medium).foregroundColor(.white).font(.largeTitle).multilineTextAlignment(.center)//.font(.bol)
            }
            Spacer()
            VStack{
                Image("tabela-IMC")
                    .resizable().scaledToFit()
                    
            }
            .padding(.bottom)
    }.background(backgroundColor)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
