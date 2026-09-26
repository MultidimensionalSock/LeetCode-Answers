import 
(
    "strings"
)

func decodeMessage(key string, message string) string {
    key = strings.ReplaceAll(key, " ", "")
    unique := ""
    for i := 0; i < len(key); i++{
        if !strings.Contains(unique, string(key[i])){
            unique = unique + string(key[i])
        }
    }
    key = unique
    encoder := make(map[string]string)
    alphabet := "abcdefghijklmnopqrstuvwxyz"
    for i := 0; i < len(alphabet); i++{
        encoder[string(key[i])] = string(alphabet[i])
    }
    answer := "";
    for i := 0; i < len(message); i++{
        if (string(message[i]) == " "){
            answer += " "
            continue
        }
        answer = answer + encoder[string(message[i])]
    }
    return answer
}
