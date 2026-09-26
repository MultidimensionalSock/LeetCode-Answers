import (
  "fmt"
  "strconv"
)

func maximum69Number (num int) int {
    str := strconv.Itoa(num)
    strar := []rune(str)

    for i := 0; i < len(strar); i++ {
        if strar[i] == '6'{
            strar[i] = '9'
            break
        } 
    }
    fmt.Println(strar)
    str = string(strar)
    num, _ = strconv.Atoi(str)
    return num
}