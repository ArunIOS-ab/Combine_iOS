//
//  ContentView.swift
//  Combine_iOS
//
//  Created by Office on 05/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ArtworkViewModel()
    var body: some View {
        NavigationStack{
            List(viewModel.artworks){
                artwork in
                ArtworkView(artwork: artwork)
            }.navigationTitle("Artworks").onAppear{
                viewModel.fetchArtwork()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
