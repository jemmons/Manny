import Foundation


public class HTML: Element {
  public init(attributes: [Attribute], children: [Node]) {
    super.init(name: "html", attributes: attributes, children: children)
  }
  
  
  convenience public init(attributes: Attribute..., @HTMLBuilder buildChildren: ()->([Node])) {
    self.init(attributes: attributes, children: buildChildren())
  }
}
