import UIKit
import SceneKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView : SCNView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createScene()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func createScene() {
        if sceneView == nil {return}
        
        let scene = SCNScene(named:"iggy4.dae")
        sceneView!.allowsCameraControl = true
        sceneView!.autoenablesDefaultLighting = true
        sceneView!.backgroundColor = UIColor.lightGrayColor()
        sceneView!.scene = scene
    }
}

