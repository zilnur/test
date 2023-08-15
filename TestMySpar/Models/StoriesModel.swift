import Foundation

struct Story: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    var isViewed: Bool
}
