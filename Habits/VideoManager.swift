//import Foundation
//
//class VideoManager: ObservableObject {
//    @Published var videos: [Video] = []
//    
//    init() {
//        loadVideos()
//    }
//    
//    func addVideo(url: URL) {
//        let video = Video(url: url)
//        videos.append(video)
//        saveVideos()
//    }
//    
//    private func loadVideos() {
//        if let data = UserDefaults.standard.data(forKey: "videos") {
//            if let savedVideos = try? JSONDecoder().decode([Video].self, from: data) {
//                videos = savedVideos
//            }
//        }
//    }
//    
//    private func saveVideos() {
//        if let encodedData = try? JSONEncoder().encode(videos) {
//            UserDefaults.standard.set(encodedData, forKey: "videos")
//        }
//    }
//    
//    func removeVideo(at index: Int) {
//        guard index >= 0 && index < videos.count else {
//            return
//        }
//        
//        videos.remove(at: index)
//        saveVideos()
//    }
//}
//
//struct Video: Identifiable, Codable {
//    var id = UUID()
//    let url: URL
//}
