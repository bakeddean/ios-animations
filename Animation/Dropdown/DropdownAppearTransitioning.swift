import UIKit

/*
Licensed Materials - Property of IBM
© Copyright IBM Corporation 2015. All Rights Reserved.
This licensed material is licensed under the Apache 2.0 license. http://www.apache.org/licenses/LICENSE-2.0.
*/

class DropdownAppearTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
   
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.8
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let to = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! DropdownViewController
        
        let container = transitionContext.containerView()
        _ = transitionDuration(transitionContext)
        
        container!.addSubview(to.view)
        
        to.show() {
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        }
        
    }
    
}
