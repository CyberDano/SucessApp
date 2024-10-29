
import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var images: [UIImage] = []
    var currentIndex = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cargar las imágenes
        images = [
            UIImage(named: "Stitch_normal")!,
            UIImage(named: "Stitch_dark")!,
            UIImage(named: "Stitch_light")!,
            UIImage(named: "Stitch_brown")!,
            UIImage(named: "Pink_normal")!,
            UIImage(named: "Pink_dark")!,
            UIImage(named: "Pink_light")!,
            UIImage(named: "Pink_brown")!
        ]
        
        // Iniciar el timer
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            
            // Actualizar la imagen en el UIImageView
            self.imageView.image = self.images[self.currentIndex]
            
            // Incrementar el índice y reiniciarlo si llega al final
            self.currentIndex += 1
            if self.currentIndex == self.images.count {
                self.currentIndex = 0
            }
        }
    }
}

