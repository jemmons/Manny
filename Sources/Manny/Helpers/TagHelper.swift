import Foundation


internal enum TagHelper {
  static func makeTag(name: String, attributes: [Attribute]) -> String {
    let content = [name, attributes.map { $0.render() }.joined(separator: " ")].filter { !$0.isEmpty }
    return "<" + content.joined(separator: " ") + ">"
  }
}
