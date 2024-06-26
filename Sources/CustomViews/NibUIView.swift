//
//  NibUIView.swift
//
//
//  Created by Ahmed Yamany on 22/04/2024.
//
#if os(iOS)
import UIKit

open class NibUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        guard let view = Bundle.main.loadNibNamed(
            String(describing: Self.self),
            owner: self,
            options: nil)?.first as? UIView else {
            fatalError("Failed to load nib file with name \(String(describing: Self.self))")
        }
        addSubview(view)
        view.frame = bounds
    }
}
#endif
