//
//  ContentView.swift
//  (final auto extreme)!!!
//
//  Created by Abdulaziz alhouti on 05/04/2022.
//

import SwiftUI

struct CarsPartList: View {
    let carspart = ["Toyota", "Nissan", "BMW", "Land Rover", "Mercedes-Benz", "Ford", "Chevrolet"]
    var body: some View {
        NavigationView{

        List(carspart, id: \.self){ carpart in
            NavigationLink(destination: Image("ok")
                .resizable()
                .scaledToFit()
                .frame(width: 427.6666666666666666668 , height: 856.7)
    
                           
                           , label: {
                CarsPartRow(carpart: carpart)
            })
             
         

        }
        .navigationTitle("Companies")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CarsPartList()
    }
}

struct CarsPartRow: View {
    let carpart: String
    var body: some View {
        HStack{
            Image(carpart)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(carpart)
                .bold()
                .font(.title)
            
        }
    }
}
}
