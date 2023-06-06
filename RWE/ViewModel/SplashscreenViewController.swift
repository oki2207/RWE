//
//  SplashscreenViewController.swift
//  RWE
//
//  Created by Olli on 06.06.23.
//

import UIKit

class SplashscreenViewController: UIViewController {
    private let logoImageView = UIImageView()
    private let titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateLogo()
        animateTitle()
    }

    private func setupUI() {
        view.backgroundColor = .white

        // Logo
        logoImageView.image = UIImage(named: "logo") // Setze das Bild für dein Logo
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Passe die Größe an
        logoImageView.center = view.center
        view.addSubview(logoImageView)

        // Schriftzug
        titleLabel.text = "Mein Splashscreen"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.sizeToFit()
        titleLabel.center = view.center
        titleLabel.frame.origin.y += 100 // Passe die Position an
        view.addSubview(titleLabel)
    }

    private func animateLogo() {
        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
            self.logoImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2).concatenating(CGAffineTransform(rotationAngle: .pi/4))
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
                self.logoImageView.transform = CGAffineTransform.identity
            }, completion: nil)
        })
    }

    private func animateTitle() {
        UIView.animate(withDuration: 0.5, delay: 1.5, options: .curveEaseInOut, animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: 0, y: -100)
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseInOut, animations: {
                self.titleLabel.transform = CGAffineTransform.identity
            }, completion: nil)
        })
    }
}

