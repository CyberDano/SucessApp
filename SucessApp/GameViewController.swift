
import UIKit

class GameViewController: UIViewController {
    
    var images: [UIImage] = [
        UIImage(named: "Stitch_normal")!,
        UIImage(named: "Stitch_dark")!,
        UIImage(named: "Stitch_light")!,
        UIImage(named: "Stitch_brown")!,
        UIImage(named: "Pink_normal")!,
        UIImage(named: "Pink_dark")!,
        UIImage(named: "Pink_light")!,
        UIImage(named: "Pink_brown")!
    ]
    
     var imageView: UIImageView {
        let imageView = UIImageView()
        imageView.image = images[0]
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    var Index = 0
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Iniciar el timer
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            
            // Actualizar la imagen en el UIImageView
            self.imageView.image = self.images[self.Index]
            
            // Incrementar el índice y reiniciarlo si llega al final
            self.Index += 1
            if self.Index == self.images.count {
                self.Index = 0
            }
        }
    }
}

