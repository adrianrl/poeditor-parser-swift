import Foundation

let localizedStringFunction = "NSLocalizedString"
public struct Translation {
    let rawKey: String
    let rawValue: String

    let localizedValue: String
    let variables: [Variable]

    init(rawKey: String, rawValue: String) {
        self.rawKey = rawKey
        self.rawValue = rawValue

        // Parse translationValue
        (localizedValue, variables) = TranslationValueParser.parseTranslationValue(translationValue: rawValue)
    }

    private var prettyKey: String {
        return rawKey.capitalized.replacingOccurrences(of: "_", with: "")
    }

    var swiftCode: String {
        if variables.isEmpty {
            return generateVariableLessSwiftCode()
        } else {
            return generateVariableSwiftCode()
        }
    }

    var swiftKey: String {
        return "\tstatic let \(prettyKey) = \"\(rawKey)\"\n"
    }

    private func generateVariableLessSwiftCode() -> String {
        /*
         static var Welcome: String {
         return NSLocalizedString()
         }
         */
        return "\tstatic var \(prettyKey): String {\n\t\treturn \(localizedStringFunction)(\"\(rawKey)\", comment: \"\")\n\t}\n"
    }

    private func generateVariableSwiftCode() -> String {
        /*
         static func ReadBooksKey(readNumber: Int) -> String {
         return ""
         }
         */
        let parameters = variables
            .map { $0.type.swiftParameter(key: $0.parameterKey) }
            .joined(separator: ", ")
        let localizedArguments = variables
            .map { $0.parameterKey }
            .map { $0.snakeCased() }
            .joined(separator: ", ")
        return "\tstatic func \(prettyKey)(\(parameters)) -> String {\n\t\treturn String(format: \(localizedStringFunction)(\"\(rawKey)\", comment: \"\"), \(localizedArguments))\n\t}\n"
    }
}
