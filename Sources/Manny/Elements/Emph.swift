import Foundation



public class Emph: Element {
  public init(_ attributes: Attribute ..., @HTMLBuilder buildChildren: ()->[Node]) {
    super.init(name: "emph", attributes: attributes, children: buildChildren())
  }
}
