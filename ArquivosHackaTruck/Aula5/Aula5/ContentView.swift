//
//  ContentView.swift
//  Aula5
//
//  Created by Student04 on 03/08/23.
//

import SwiftUI
import _MapKit_SwiftUI
import CoreLocation

struct ContentView: View {
    @State var noLocal : String = "Brasil"
                                                                                       
    @State  private var showingsheet : Bool = false
    private var places = [Location(name:"Brasil",coordinate:MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:-14.2350, longitude:-51.1275),span:MKCoordinateSpan(latitudeDelta:40,longitudeDelta:40)), flag:"    🇧🇷",descricao:"O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
                          Location(name:"Cairo",coordinate:MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:30.0446, longitude:31.2456 ),span:MKCoordinateSpan(latitudeDelta:0.5,longitudeDelta:0.5)), flag:"🇪🇬",descricao:"Cairo, a grande capital do Egito, está localizada às margens do rio Nilo. Em seu centro, ficam a Praça Tahrir e o amplo Museu Egípcio, que exibe uma coleção de antiguidades, como múmias reais e artefatos dourados do Rei Tutancâmon. Perto dali fica Gizé, local das famosas pirâmides e da Grande Esfinge, que data do século XXVI a.C. Na área arborizada de Zamalek, na ilha de Gezira, a Torre do Cairo, com 187 m de altura, proporciona vistas panorâmicas da cidade."),Location(name:"Maldivas",coordinate:MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:4.1748, longitude:73.5098  ),span:MKCoordinateSpan(latitudeDelta:2,longitudeDelta:2)), flag:"🇲🇻",descricao:"As Maldivas são uma nação tropical no Oceano Índico composta por 26 atóis em formato de anel, que são formados por mais de 1.000 ilhas de coral. O país é conhecido pelas praias, pelas lagoas azuis e pelos extensos recifes. A capital, Malé, tem um movimentado mercado de peixes, restaurantes e lojas na rua principal, Majeedhee Magu, além da Hukuru Miskiy (também conhecida como Mesquita da Sexta-Feira), do século XVII, feita de coral branco esculpido."),Location(name:"Roma",coordinate:MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:41.8905, longitude:12.4942 ),span:MKCoordinateSpan(latitudeDelta:0.5,longitudeDelta:0.5)), flag:"🇮🇹",descricao:"Roma, a capital da Itália, é uma cidade cosmopolita, enorme, com quase 3.000 anos de arte, arquitetura e cultura influentes no mundo todo e à mostra. Ruínas antigas como o Fórum e o Coliseu evocam o poder do antigo Império Romano. A Cidade do Vaticano, sede da Igreja Católica Romana, tem a Basílica de São Pedro e os museus do Vaticano, que abrigam obras-primas como os afrescos da Capela Sistina de Michelângelo")
    ]
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:-14.2350, longitude:-51.1275),span:MKCoordinateSpan(latitudeDelta:40,longitudeDelta:40))
    var body: some View {

        NavigationStack{
           // Text
            ZStack{
                
               
                Map(coordinateRegion: $region, annotationItems: places)
                {
                    
                    index in MapAnnotation(coordinate: index.coordinate.center)
                    {
                        Circle()
                        //.strokeBorder(.red, lineWidth: 4)
                            .frame(width: 10, height: 10)
                            .onTapGesture(count: 1)
                            {
                    
                                showingsheet.toggle()
                               
                            }.sheet(isPresented: $showingsheet) {
                                LocationView(localizacao: index)
                            }

                    }
                    
                }.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack
                    {
                        VStack
                        {
                            Text("World map")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Text("\(noLocal)")
                        }
                        Spacer()
                        HStack
                        {
                            Button
                            {
                                //print("Button pressed")
                                region = places[0].coordinate
                                noLocal = places[0].name
                            }
                        label:
                            {
                                Text(places[0].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            .frame(width:90,height: .infinity)
                            .background(.blue)
                            .cornerRadius(6.0)
                            .contentShape(Rectangle()).padding()
                            
                            Button
                            {
                                //print("Button pressed")
                               region =  places[1].coordinate
                                noLocal = places[1].name
                                
                            }
                        label:
                            {
                                Text(places[1].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            .frame(width:90,height: .infinity)
                            .background(.blue)
                            .cornerRadius(6.0)
                            .contentShape(Rectangle()).padding()
                        }
                        HStack
                        {
                            Button
                            {
                                //print("Button pressed")
                                noLocal = places[2].name
                                region =  places[2].coordinate
                            }
                        label:
                            {
                                Text(places[2].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            .frame(width: 90,height: .infinity)
                            .background(.blue)
                            .cornerRadius(6.0)
                            .contentShape(Rectangle()).padding()
                            Button
                            {
                                //print("Button pressed")
                                noLocal = places[3].name
                                region =  places[3].coordinate
                            }
                        label:
                            {
                                Text(places[3].name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(8)
                            }
                            .frame(width: 90,height: .infinity)
                            .background(.blue)
                            .cornerRadius(6.0)
                            .contentShape(Rectangle()).padding()
                        }
                    }.padding(0)
                    
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
