//
//  ContentView.swift
//  hazardmap
//
//  Created by k23125kk on 2023/08/23.
//

import SwiftUI
import MapKit

struct Spot: Identifiable {
    let id = UUID()
    let lat: Double
    let long: Double
    var coordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
}

struct ContentView: View {
    //指す座標の配列
    let spotlist = [
        Spot(lat: 35.6834843, long: 139.7644207),
        Spot(lat: 35.6790079, long: 139.7675881),
        Spot(lat: 35.6780057, long: 139.7631035)
    ]
    //座標と領域を指定する
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.6805702,   //緯度
            longitude: 139.7676359  //経度
        ),
        latitudinalMeters: 1000.0,  //南北距離
        longitudinalMeters: 1000.0  //東西距離
    )
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: spotlist,
            annotationContent: { spot in MapMarker(coordinate: spot.coordinate, tint: .orange)}
        ).edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews:
    PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
