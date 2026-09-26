import( 
    "fmt"
)

func sumFourDivisors(nums []int) int {
    total := 0
    for i := 0; i < len(nums); i++{
        count := 1
        divisor := nums[i]
        for j := 1; j < (nums[i] / 2) + 1; j++{
            if count > 4 {
                break
            }
            div := nums[i] % j 
            if div != 0 {  
                continue
            } 
            count++
            divisor += j  
        } 
        if count == 4{
            total += divisor 
        }
    }
    return total 
}
