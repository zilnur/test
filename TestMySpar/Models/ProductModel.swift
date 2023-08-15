import Foundation

struct Product: Identifiable {
    let id = UUID()
    let newPrice: Double
    let oldPrice: Double?
    let image: String
    let isPromotion: Bool
}
