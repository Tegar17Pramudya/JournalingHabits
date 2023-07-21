import SwiftUI
import UIKit
import MobileCoreServices
import AVKit

struct CameraView: View {
    @Binding var isModalVisible: Bool

    @State private var isRecording = false
    @State private var videoURL: URL?
    @State private var showVideoPicker = false

    @ObservedObject var videoManager = VideoManager()

    var body: some View {
        NavigationView {
            VStack {
                if isRecording {
                    VideoPreviewView(url: videoURL)
                } else {
                    Button(action: {
                        showVideoPicker = true
                    }) {
                        Text("Start Recording")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }

                List {
                    ForEach(videoManager.videos) { video in
                        HStack {
                            NavigationLink(destination: VideoDetailView(video: video)) {
                                Text("Video \(video.id)")
                            }
                        }
                    }
                    .onDelete { indices in
                        indices.forEach { index in
                            videoManager.removeVideo(at: index)
                        }
                    }
                }
                .navigationBarTitle("Video List")
            }
            .sheet(isPresented: $showVideoPicker) {
                VideoPickerView(videoURL: $videoURL, isRecording: $isRecording) {
                    videoManager.addVideo(url: videoURL!)
                    resetRecording()
                }
            }
        }
    }

    func resetRecording() {
        videoURL = nil
        isRecording = false
    }
}

struct VideoPickerView: UIViewControllerRepresentable {
    @Binding var videoURL: URL?
    @Binding var isRecording: Bool
    var onRecordingSaved: () -> Void

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .camera
        imagePickerController.mediaTypes = [UTType.movie.identifier] // Update this line
        imagePickerController.delegate = context.coordinator
        return imagePickerController
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(videoURL: $videoURL, isRecording: $isRecording, onRecordingSaved: onRecordingSaved)
    }

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        @Binding var videoURL: URL?
        @Binding var isRecording: Bool
        var onRecordingSaved: () -> Void

        init(videoURL: Binding<URL?>, isRecording: Binding<Bool>, onRecordingSaved: @escaping () -> Void) {
            _videoURL = videoURL
            _isRecording = isRecording
            self.onRecordingSaved = onRecordingSaved
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            guard let mediaType = info[.mediaType] as? String,
                  mediaType == UTType.movie.identifier, // Update this line
                  let url = info[.mediaURL] as? URL else {
                return
            }

            videoURL = url
            isRecording = true

            picker.dismiss(animated: true)

            onRecordingSaved()
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
}

struct VideoPreviewView: View {
    let url: URL?

    var body: some View {
        if let url = url {
            VideoPlayer(player: AVPlayer(url: url))
        }
    }
}

struct VideoDetailView: View {
    let video: Video

    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: video.url))
                .frame(height: 300)
            Text("Video \(video.id)")
                .font(.title)
                .padding()
        }
    }
}

struct Video: Identifiable {
    let id = UUID()
    let url: URL
}

class VideoManager: ObservableObject {
    @Published var videos: [Video] = []

    func addVideo(url: URL) {
        let video = Video(url: url)
        videos.append(video)
    }

    func removeVideo(at index: Int) {
        guard index >= 0, index < videos.count else {
            return
        }
        videos.remove(at: index)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(isModalVisible: .constant(false))
    }
}
