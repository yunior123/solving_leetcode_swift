import UIKit
var str = "Hello, playground"
print(str)

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    // O(m+n)
    var map : [Int: Bool] = [:]
    var result: Set<Int> = []
    for num1 in nums1 {
        map[num1]=true
    }
    for num2 in nums2 {
        if map[num2] != nil {
            result.insert(num2)
        }
    }
    return Array(result)
}
//print(intersection([1,2,2,1], [2,2]))
//print(intersection([4,9,5], [9,4,9,8,4]))


func sortArray(_ nums: [Int]) -> [Int]{
    if nums.count == 1{
        return nums
    }
    let middle = nums.count / 2;
    let left_part = sortArray(Array(nums[0 ..< middle]));
    let right_part = sortArray(Array(nums[middle ..< nums.count]));

    return merge(left_part, right_part)
}

func merge(_ left_part: [Int],_ right_part: [Int]) -> [Int]{
    var numbers = [Int]()
    var i = 0
    var j = 0
    while left_part.count > i && right_part.count > j{
        if left_part[i] < right_part[j]{
            numbers.append(left_part[i])
            i = i + 1
        }
        else{
            numbers.append(right_part[j])
            j = j + 1
        }
    }
    while left_part.count > i{
        numbers.append(left_part[i])
        i = i + 1
    }
    while right_part.count > j{
        numbers.append(right_part[j])
        j = j + 1
    }
    return numbers
}
//let arre = [9,4,5,2]
//print(merge_sort(arre))


func find_peak_value(_ numbers: [Int],_ first: Int,_ last: Int,_ length: Int) -> Int{
    let midpoint = (first + last) / 2
    if (midpoint == 0 || numbers[midpoint] > numbers[midpoint - 1]) && (
        midpoint == length - 1 || numbers[midpoint] > numbers[midpoint + 1]){
        return midpoint
    }
    // This means that there has to be a peak value to the left
    else if midpoint > 0 && numbers[midpoint - 1] > numbers[midpoint]{
        return find_peak_value(numbers, first, midpoint - 1, length)
    }
    else{
        return find_peak_value(numbers, midpoint + 1, last, length)
    }

}
//let arr = [9,4,5,2]
//find_peak_value(arr, 0, arr.count, arr.count)
//func guessNumber(_ n: Int) -> Int {
//     var first = 0
//    var last = n - 1
//    while first<last {
//        let midpoint = (first+last)/2
//        if guess(midpoint)==0 {
//            return midpoint
//        }else if guess(midpoint)==-1 {
//            first=midpoint + 1
//        } else {
//            last=midpoint
//        }
//    }
//    return first
// }


public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }
 
func maxDepth(_ root: TreeNode?)->Int{
    if root == nil {
        return 0
    }
    let left=maxDepth(root?.left)
    let right=maxDepth(root?.right)
    
    return 1 + max(left, right)
}
func minDepth(_ root: TreeNode?)->Int{
    if root == nil {
        return 0
    }
  
    let left=minDepth(root?.left)
    let right=minDepth(root?.right)
    if left != 0 && right != 0 {
        return 1 + min(left,right)
    }
    
    return 1 + left + right
}

func numIslands(_ grid: [[Character]]) -> Int {
    guard grid.count > 0 && grid[0].count > 0 else {
        return 0
    }
    var islandCount=0
    var visited = Set<String>()
    for r in 0..<grid.count{
        for c in 0..<grid[0].count {
            if String(grid[r][c]) == "1" && explore(grid, r, c, &visited) {
                islandCount+=1
            }
        }
    }
    return islandCount
}

func explore(_ grid: [[Character]], _ x: Int, _ y: Int, _  visited: inout Set<String> ) -> Bool {
    let rowInBounds = 0 <= x && x < grid.count
    let columnInBounds = 0 <= y && y < grid[0].count

    if !rowInBounds || !columnInBounds {
        return false
    }
    guard String(grid[x][y]) == "1" else {
        return false
    }
    let position: String = "\(x),\(y)"
    if visited.contains(position) {
        return false
    }
    visited.insert(position)

    explore(grid, x-1, y, &visited)
    explore(grid, x+1, y, &visited)
    explore(grid, x, y-1, &visited)
    explore(grid, x, y+1, &visited)
    return true
}
func majorityElement(_ nums: [Int]) -> Int {
    var candidate = nums[0]
    var count=0
    
    for num in nums {
        if count==0 {
            candidate=num
        }
        if candidate==num{
            count+=1
        }else{
            count-=1
        }
    }
    return candidate
}
//print(majorityElement([6,5,5]))
//print(majorityElement([6,5,5,5,5,5,5,5,6,6,6]))

func maxArea(_ height: [Int]) -> Int {
    var left=0
    var right=height.count-1
    var result=0
    while left<right {
        result=max(min(height[left], height[right])*(right-left), result)
        if height[left]>height[right] {
            right-=1
        }
        else{
            left+=1
        }
    }
    return result
}
//print(maxArea([4,3,2,1,4]))
//print(maxArea([1,2,1]))
//print(maxArea([1,1]))
//print(maxArea([4,3,2,1,4,5,6]))
func maxProfit(_ prices: [Int]) -> Int {
    var  profit = 0
    var i=0
    for _ in prices{
        if prices.count-1==i {
            break
        }
        if prices[i+1] > prices[i] {
            profit += prices[i+1] - prices[i]
        }
        i+=1
    }
    return profit
}
//print(maxProfit([1,2,3,4,5]))
//print(maxProfit([7,1,5,3,6,4]))
//print(maxProfit([7,6,5,4]))
func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var plantingSpots=n
    var i = 0
    if flowerbed.count == 0 {
        return false
    }

    while flowerbed.count > i && plantingSpots > 0{
        if flowerbed[i]==0{
            let outOfBounds = flowerbed.count == i+1
            if outOfBounds || flowerbed[i+1] == 0{
                plantingSpots-=1
            }else{
                i+=1
            }
        }
        i+=2
    }
    if plantingSpots==0 {
        return true
    }
    return false
}
//0,1,2,3,4,5
//0,0,0,1,0,0
//print(canPlaceFlowers([1,0,0,0,1], 1))//true
//print(canPlaceFlowers([1,0,0,0,1], 2))//false
//print(canPlaceFlowers([1,0,0,0,1,1,0,0,0,0,0,0], 4))//true
//print(canPlaceFlowers([0], 1))//true
//print(canPlaceFlowers([0,1,0], 1))//false
//print(canPlaceFlowers([0,0,0,0,1], 2))//true
//print(canPlaceFlowers([0,0,0], 2))//true
//print(canPlaceFlowers([1,0,0,0], 1))//true


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
   
    var l1 = l1
    var l2 = l2
    var val = 0
    var exceed = 0
    let head =  ListNode(0)
    var current: ListNode? = head
    while !((l1 == nil) && (l2 == nil) && (exceed==0)){
        val = exceed
        if l1 != nil {
            val += l1!.val
            l1 = l1!.next
        }
        if l2 != nil {
            val += l2!.val
            l2 = l2!.next
        }
        if val >= 10 {
            val = val % 10
            exceed = 1
        }
        else{
            exceed = 0
        }
        print(val)
        current?.next=ListNode(val)
        current=current?.next
    
    }
    return head.next
}


func getListNode2() -> ListNode{
    let head = ListNode(0)
    var node = head
    let list = [9,9,9,9]
    var i=4
    while i>0 {
        i-=1
        node.next=ListNode(list[i])
        node=node.next!
    }
    return head.next!
}
func getListNode1() -> ListNode{
    let head = ListNode(0)
    var node = head
    let list = [9,9,9,9,9,9,9]
    var i=7
    while i>0 {
        i-=1
        node.next=ListNode(list[i])
        node=node.next!
    }
    return head.next!
}
func getValListNode(_ node: ListNode?){
    print("kkkkk")
    var node=node
    while node != nil{
        print(node!.val)
        node=node!.next
       
    }
  
}
//let node1=getListNode1()
//let node2=getListNode2()
////getValListNode(node1)
////print(node1)
////getValListNode(node1)
////print("sep")
////getValListNode(node2)
////print("sep")
//getValListNode(addTwoNumbers(node1 , node2))

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double{
    var i=0
    var j=0
    var numbers = [Int]()
    
    while i<nums1.count && j < nums2.count {
        if nums1[i] < nums2[j] {
            numbers.append(nums1[i])
            i+=1
        }
        else{
            numbers.append(nums2[j])
            j+=1
        }
    }
    
    while i<nums1.count {
        numbers.append(nums1[i])
        i+=1
    }
    while j<nums2.count {
        numbers.append(nums2[j])
        j+=1
    }
    var median:Double
    
    if numbers.count % 2 == 0 {
        let secondIndex=numbers.count/2
        let firstIndex=secondIndex-1
        median = (Double(numbers[secondIndex])+Double(numbers[firstIndex]))/2
    }else{
        median = Double(numbers[numbers.count/2])
    }
    return median
}

//print(findMedianSortedArrays([1,2,3,4], [5,6,7,8]))

//
//func permute(_ nums: [Int]) -> [[Int]] {
//    var result:[[Int]]=[]
//    var numbers = nums
//    go_permute(&numbers, &result, 0)
//    return result
//
//}
//func go_permute(_ nums: inout[Int],_ result: inout[[Int]],_ start: Int ){
//    if nums.count<=start {
//        result.append(nums)
//        return
//    }
//    for i in start..<nums.count {
//        nums.swapAt(i, start)
//        go_permute(&nums, &result, start+1)
//        nums.swapAt(i, start)
//    }
//}

//print(permute([1,2,3]))


func trap(_ height: [Int]) -> Int {
    var res = 0
    var left = 0
    var right = height.count-1
    var maxLeft = 0
    var maxRight = 0
    while left <= right{
        if height[left] <= height[right]{
            if height[left] > maxLeft{
                maxLeft = height[left]
            }
            else{
                res += maxLeft - height[left]
            }
            left += 1
        }
        else{
            if height[right] >= maxRight {
                maxRight = height[right]
            }
            else{
                res += maxRight - height[right]
            }
            right -= 1
        }
            
           
    }
    return res
}
//print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var result:[[Int]]=[]
    var uniques: Set = Set<String>()
    var numbers = nums
    go_permute_unique(&numbers, &result, 0, &uniques)
    return result
        
}
func go_permute_unique(_ nums: inout[Int],_ result: inout[[Int]],_ start: Int, _  uniques: inout Set<String>){
    if nums.count<=start {
        var string: String = ""
        for i in nums {
            string+="\(i)"
        }
        if !(uniques.contains(string)) {
            uniques.insert(string)
        }else{
            return
        }
        result.append(nums)
        return
    }
   
    for i in start..<nums.count {
        nums.swapAt(i, start)
        go_permute_unique(&nums, &result, start+1, &uniques)
        nums.swapAt(i, start)
    }
}

print(permuteUnique([1,1,3]))

