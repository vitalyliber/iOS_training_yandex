import UIKit

enum Priority {
    case неважная
    case обычная
    case важная
}

struct Note {
    let uid: String
    let title: String
    let content: String
    let color: UIColor
    let priority: Priority
    let will_destroy_at: Date?
    init(uid: String = UUID().uuidString, title: String, content: String, color: UIColor = UIColor.white, priority: Priority, will_destroy_at: Date? = nil) {
        self.title = title
        self.content = content
        self.color = color
        self.uid = uid
        self.priority = priority
        self.will_destroy_at = will_destroy_at
    }
}

print(Note(uid: "custom_id", title: "This is title", content: "This is content about ...", priority: Priority.важная))
print(Note(title: "This is title", content: "This is content about ...", priority: Priority.важная, will_destroy_at: Date()))
print(Note(title: "This is title", content: "This is content about ...", color: UIColor.red, priority: Priority.важная))
print(Note(title: "This is title", content: "This is content about ...", priority: Priority.важная))
