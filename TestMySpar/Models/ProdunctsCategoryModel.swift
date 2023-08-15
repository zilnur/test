import Foundation

struct ProdunctsCategory: Identifiable {
    let id = UUID()
    let title: String
    let products: [Product]
}
