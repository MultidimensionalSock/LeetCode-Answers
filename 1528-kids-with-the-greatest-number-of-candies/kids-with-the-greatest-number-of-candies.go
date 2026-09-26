import (
	"fmt"
	"slices"
)


func kidsWithCandies(candies []int, extraCandies int) []bool {
    max := slices.Max(candies)
    wouldHaveMax := []bool{}

    for i := 0; i < len(candies); i++{
        if (candies[i] + extraCandies) >= max{
            wouldHaveMax = append(wouldHaveMax, true)
        } else {
            wouldHaveMax = append(wouldHaveMax, false)
        }
    }

    return wouldHaveMax
}