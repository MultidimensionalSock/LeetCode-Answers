/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

 import
 (
    "strconv"
    "fmt"
 )

func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
    l1str := ReverseString(LinkedListToString(l1))   
    l2str := ReverseString(LinkedListToString(l2))   
     
    largetotal := addLargeNumbers(l1str, l2str)
    root := CreateLinkedList(largetotal)
    return root
}

func CreateLinkedList(s string) *ListNode{
    array := []rune(s)  
    var root *ListNode = &ListNode{Val: 0}
    currentNode := root

    for i := len(array) -1; i >= 0; i-- {
        intval, _ := strconv.Atoi(string(array[i]))
        nextNode := &ListNode{Val: intval}
        currentNode.Next =  nextNode
        currentNode = nextNode
    }
    return root.Next;
}

func LinkedListToString(n *ListNode) string {
    str := strconv.Itoa(n.Val)
    for n.Next != nil{ 
        str = str + strconv.Itoa(n.Next.Val);
        n = n.Next;
    } 
    return str
}

func ReverseString(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func addLargeNumbers(num1, num2 string) string {

    i := len(num1) - 1 
    j := len(num2) - 1 
    carry := 0

    var result []byte 

    for i >= 0 || j >= 0 || carry != 0 { 
        n1 := 0 
        if i >= 0 { 
            n1 = int(num1[i] - '0') 
        }

        n2 := 0 
        if j >= 0 { 
            n2 = int(num2[j] - '0') 
        }
 
        current := n1 + n2 + carry 
        carry = current / 10 
        current = current % 10 
        result = append([]byte{'0' + byte(current)}, result...) 
        i--
        j--
    } 
    return string(result) 
}