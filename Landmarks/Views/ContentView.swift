//
//  ContentView.swift
//  Landmarks
//
//  Created by Bairi Akash on 20/11/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        @State var selectedCoordinate = CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)
        
        VStack {
            MapView( coordinate: $selectedCoordinate)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer( )
                    Text("California")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
