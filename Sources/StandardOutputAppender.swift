import Log

public final class StandardOutputAppender: Appender {
    public var name: String = "Standard Output Appender"
    public var closed: Bool = false
    public var level: Log.Level = .all

    public init () {}

    public func append(_ event: LoggingEvent) {
        var logMessage = "\(event.message ?? "") \n"
        let file = event.locationInfo.file
        logMessage += "In File: \(file)"
        logMessage += "\n"
        let line = event.locationInfo.line
        logMessage += "Line: \(line)"
        logMessage += "\n"
        let function = event.locationInfo.function
        logMessage += "Called From: \(function)"
        logMessage += "\n"
        print(logMessage)
    }
}
