//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Lucas Newlands on 04/07/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
                Text("Profile")
                Text("Certifications")
                Text("Sign Out")
            }
            .navigationTitle("Menu")
        } detail: {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: -15) {
                        HStack {
                            Text("Lucas Newlands")
                                .font(.title)
                            Spacer()
                            
                            Image("userImage")
                                .resizable()
                                .frame(width:75, height: 75)
                                .cornerRadius(40)
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        Text("Software Application Developer")
                            .font(.subheadline)
                    }
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("About me")
                            .font(.title2)
                        
                        Text("Desenvolvedor de software apaixonado pelo desenvolvimento de soluções inovadoras e interfaces incríveis. Atuo como desenvolvedor front-end/mobile, especializado em tecnologias web e móveis. Minha experiência inclui trabalhar tanto com desenvolvimento nativo iOS quanto com desenvolvimento híbrido, permitindo-me criar aplicativos e sites que atendem às necessidades específicas dos usuários. Meu objetivo é entregar produtos de alta qualidade, combinando design elegante com funcionalidade intuitiva.\nEstou sempre em busca de aprimorar minhas habilidades e acompanhar as últimas tendências e avanços no desenvolvimento de front-end e mobile.\nMeu portfólio: gitHub.com/newlandslucas")
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                    
                    Spacer()
                }
                .navigationTitle("Profile")
                .padding()
            }

        }
    }
}

#Preview {
    ContentView()
}
