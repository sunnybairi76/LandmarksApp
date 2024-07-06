//
//  MapView.swift
//  Landmarks
//
//  Created by Bairi Akash on 20/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
  @Binding var coordinate: CLLocationCoordinate2D
  @State private var span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  var body: some View {
    Map(coordinateRegion: .constant(MKCoordinateRegion(center: coordinate, span: span)))
  }
}
struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: .constant(CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)))
  }
}
