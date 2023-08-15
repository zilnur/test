import Foundation

class ViewModel: ObservableObject {
    
    @Published var stories: [Story] = [Story(name: "Привелегии Spar", image: "logo", isViewed: false),
                            Story(name: "Мы в соцсетях", image: "logo", isViewed: false),
                            Story(name: "3 рецепта коктейлей", image: "logo", isViewed: false),
                            Story(name: "Дегустации в SPAR", image: "logo", isViewed: false),
                            Story(name: "Новинки недели", image: "logo", isViewed: false)]
    
    @Published var promotions: [Promotions] = [Promotions(image: "promotion"), Promotions(image: "promotion")]
    
    @Published var points = Int.random(in: 5...50)
    
    @Published var announcements: [Announcement] = [Announcement(name: "Абонемент на кофе", image: "announcement"),
                                         Announcement(name: "Мои скидки", image: "announcement"),
                                         Announcement(name: "Карта в подарок", image: "announcement"),
                                         Announcement(name: "Доставка за 1 час", image: "announcement")]
    
    @Published var produncts: [ProdunctsCategory] = [ProdunctsCategory(title: "Рекомендуем", products: [Product(newPrice: 259.90,
                                                                                                     oldPrice: nil,
                                                                                                     image: "lamber",
                                                                                                     isPromotion: false),
                                                                                             Product(newPrice: 99.90,
                                                                                                     oldPrice: nil,
                                                                                                     image: "cola",
                                                                                                     isPromotion: true),
                                                                                             Product(newPrice: 309.90,
                                                                                                     oldPrice: 489.90,
                                                                                                     image: "zewa", isPromotion: true)]),
                                          ProdunctsCategory(title: "Сладкое настроение", products: [Product(newPrice: 99.90,
                                                                                                            oldPrice: nil,
                                                                                                            image: "lichi",
                                                                                                            isPromotion: false),
                                                                                                    Product(newPrice: 99.90,
                                                                                                            oldPrice: nil,
                                                                                                            image: "lime",
                                                                                                            isPromotion: false),
                                                                                                    Product(newPrice: 99.90,
                                                                                                            oldPrice: nil,
                                                                                                            image: "mango",
                                                                                                            isPromotion: false)])]
}
