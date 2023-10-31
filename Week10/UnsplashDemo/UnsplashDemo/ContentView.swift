//
//  ContentView.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 10/30/23.
//

import SwiftUI


struct ContentView: View {
    @State var imageUrl: URL? = nil
    var body: some View {
        ZStack {
            AsyncImage(url: imageUrl)
            Button("Refresh") {
                Task {
                    await refresh()
                }
            }
            .padding()
            .background(Color.white)
        }
        .padding()
        .task {
            await refresh()
        }
    }

    func refresh () async {
        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("Client-ID 0yzyMfVFbeznTwIFPBJqLhWIkAmAO5yfQPp5pKKi5V4", forHTTPHeaderField: "Authorization")

        do {
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

            let decoder = JSONDecoder()

            let photo = try decoder.decode(Photo.self, from: data)
            imageUrl = URL(string: photo.urls.regular)
            print(photo.urls.regular)
//                print(data)
//                print(response)
        } catch {
            print(error)
        }
    }

}

#Preview {
    ContentView()
}
