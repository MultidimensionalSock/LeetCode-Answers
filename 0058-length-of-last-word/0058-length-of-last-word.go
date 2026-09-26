import
(
    "strings"
    "unicode/utf8"
)
func lengthOfLastWord(s string) int {
    words := strings.Fields(s)
    len := utf8.RuneCountInString(words[len(words) - 1])
    return len
}