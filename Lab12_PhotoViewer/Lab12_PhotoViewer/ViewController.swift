import UIKit

class PhotoViewerViewController: UIViewController {
    
    // Array of image names
    let imageNames = ["photo1", "photo2", "photo3","photo4",] // Replace with your image names
    var currentIndex = 0 // Tracks the currently displayed image
    
    // Image view for displaying photos
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupImageView()
        setupGestures()
        updateImage()
    }
    
    // Setup the image view
    private func setupImageView() {
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
    
    // Update the displayed image
    private func updateImage() {
        let imageName = imageNames[currentIndex]
        imageView.image = UIImage(named: imageName)
    }
    
    // Setup swipe gestures
    private func setupGestures() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeLeft.direction = .left
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeRight.direction = .right
        
        view.addGestureRecognizer(swipeLeft)
        view.addGestureRecognizer(swipeRight)
    }
    
    // Handle swipe gestures
    @objc private func handleSwipe(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            // Show next photo
            if currentIndex < imageNames.count - 1 {
                currentIndex += 1
                updateImage()
            }
        } else if gesture.direction == .right {
            // Show previous photo
            if currentIndex > 0 {
                currentIndex -= 1
                updateImage()
            }
        }
    }
}
