import Danger
import Foundation

let danger = Danger()

if danger.git.createdFiles.count + danger.git.modifiedFiles.count - danger.git.deletedFiles.count > 50 {
    warn("Big PR, try to keep changes smaller if you can")
}

if !danger.github.pullRequest.head.ref.contains("/") {
    warn("Your branch should contain the user prefix, e.g. `octocat/my-feature`")
}
