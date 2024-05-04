//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Hristo Stankov on 24.03.24.
//

import SwiftUI

final class ImageLoader : ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURLString urlstring: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlstring) { uiImage in
            guard let uiImage else {
                return
            }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}
struct AppetizerRemoteImage : View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
