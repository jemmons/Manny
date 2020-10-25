import Foundation



public class Element: Node {
  public var attributes: [Attribute]
  public let name: String
    

  public init(name: String, attributes: [Attribute], children: [Node]) {
    self.name = name
    self.attributes = attributes
    super.init(children: children)
  }
  
  
  convenience public init(_ name: String, attributes: [Attribute] = [], @HTMLBuilder buildChildren: () -> [Node] ) {
    self.init(name: name, attributes: attributes, children: buildChildren())
  }
  
  
  override public func render() -> String {
    var buf = TagHelper.makeTag(name: name, attributes: attributes)
    buf = children.reduce(into: buf) { $0.append($1.render()) }
    buf.append("</")
    buf.append(name)
    buf.append(">")
    return buf
  }
}
