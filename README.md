# SwiftUI IPFSImage

`IPFSImage` is `AsyncImage`, but with init options to load IPFS-based images and with cache capabilities. IPFSImage is based on the amazing work of [Lorenzo Fiamingo](https://github.com/lorenzofiamingo) with [CachedAsyncImage](https://github.com/lorenzofiamingo/swiftui-cached-async-image)

## Usage

To use IPFSImage simply import the package and use `IPFSImage` instead of `AsyncImage`.

```swift
IPFSImage(cid: "Your IPFS Image CID/HASH")
```

This will request a resizeable image from the specified IPFS cid/hash. IPFSImage also provides default loading and error states on top of AsyncImage. IPFSImage includes the same API and behavior as `AsyncImage`, so you can use any of the default AsyncImage initializers.

In addition to AsyncImage initializers, you have the ability to specify the cache you want to use (by default `URLCache.shared` is used), and to use `URLRequest` instead of a cid:

```swift
IPFSImage(urlRequest: logoURLRequest, urlCache: .imageCache)
```

```swift
// URLCache+imageCache.swift

extension URLCache {
    
    static let imageCache = URLCache(memoryCapacity: 512*1000*1000, diskCapacity: 10*1000*1000*1000)
}
```

Remember when setting the cache the response (in this case our image) must be no larger than about 5% of the disk cache (See [this discussion](https://developer.apple.com/documentation/foundation/nsurlsessiondatadelegate/1411612-urlsession#discussion)).

## Installation

1. In Xcode, open your project and navigate to **File** → **Swift Packages** → **Add Package Dependency...**
2. Paste the repository URL (`https://github.com/EurekaDAO/SwiftUI-IPFSImage`) and click **Next**.
3. Click **Finish**.
