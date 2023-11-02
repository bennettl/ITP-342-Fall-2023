import Foundation


do {
    // Data contains our image JSON
    let urlResponse = try await URLSession.shared.data(for: urlRequest)
} catch {
    // handle error
}



print(url.scheme)
print(url.lastPathComponent)

// URL(strin) "https://www.google.com"
