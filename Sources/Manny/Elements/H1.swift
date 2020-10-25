import Foundation



public class H1: Element {
  public init(attributes: [Attribute], children: [Node]) {
    super.init(name: "h1", attributes: attributes, children: children)
  }
  
  
  convenience public init(_ attributes: Attribute..., @HTMLBuilder buildChildren: ()->[Node]) {
    self.init(attributes: attributes, children: buildChildren())
  }
}
