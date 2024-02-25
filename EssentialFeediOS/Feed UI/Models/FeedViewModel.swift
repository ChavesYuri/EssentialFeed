import Foundation
import EssentialFeed

final class FeedViewModel {
    typealias Observer<T> = (T) -> Void
    private let feedLoader: FeedLoader

    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    var onFeedLoad: Observer<[FeedImage]>?
    var onLoadingChange: Observer<Bool>?
    
    func loadFeed() {
        onLoadingChange?(true)
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onFeedLoad?(feed)
            }
            self?.onLoadingChange?(false)
        }
    }
}
