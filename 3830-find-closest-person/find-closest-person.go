func findClosest(x int, y int, z int) int {
    if x < z{
        x = z - x
    } else {
        x = x - z
    }

    if y < z {
        y = z - y
    } else {
        y = y - z
    } 
    
    if (x > y){
        return 2
    } else if (x < y) {
        return 1
    } else {
        return 0 
    }
}