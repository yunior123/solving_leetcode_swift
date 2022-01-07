import UIKit
var str = "Hello, playground"
print(str)

//func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    // O(m+n)
//    var map : [Int: Bool] = [:]
//    var result: Set<Int> = []
//    for num1 in nums1 {
//        map[num1]=true
//    }
//    for num2 in nums2 {
//        if map[num2] != nil {
//            result.insert(num2)
//        }
//    }
//    return Array(result)
//}
////print(intersection([1,2,2,1], [2,2]))
////print(intersection([4,9,5], [9,4,9,8,4]))
//
//
//func sortArray(_ nums: [Int]) -> [Int]{
//    if nums.count == 1{
//        return nums
//    }
//    let middle = nums.count / 2;
//    let left_part = sortArray(Array(nums[0 ..< middle]));
//    let right_part = sortArray(Array(nums[middle ..< nums.count]));
//
//    return merge(left_part, right_part)
//}
//
//func merge(_ left_part: [Int],_ right_part: [Int]) -> [Int]{
//    var numbers = [Int]()
//    var i = 0
//    var j = 0
//    while left_part.count > i && right_part.count > j{
//        if left_part[i] < right_part[j]{
//            numbers.append(left_part[i])
//            i = i + 1
//        }
//        else{
//            numbers.append(right_part[j])
//            j = j + 1
//        }
//    }
//    while left_part.count > i{
//        numbers.append(left_part[i])
//        i = i + 1
//    }
//    while right_part.count > j{
//        numbers.append(right_part[j])
//        j = j + 1
//    }
//    return numbers
//}
////let arre = [9,4,5,2]
////print(merge_sort(arre))
//
//
//func find_peak_value(_ numbers: [Int],_ first: Int,_ last: Int,_ length: Int) -> Int{
//    let midpoint = (first + last) / 2
//    if (midpoint == 0 || numbers[midpoint] > numbers[midpoint - 1]) && (
//        midpoint == length - 1 || numbers[midpoint] > numbers[midpoint + 1]){
//        return midpoint
//    }
//    // This means that there has to be a peak value to the left
//    else if midpoint > 0 && numbers[midpoint - 1] > numbers[midpoint]{
//        return find_peak_value(numbers, first, midpoint - 1, length)
//    }
//    else{
//        return find_peak_value(numbers, midpoint + 1, last, length)
//    }
//
//}
////let arr = [9,4,5,2]
////find_peak_value(arr, 0, arr.count, arr.count)
////func guessNumber(_ n: Int) -> Int {
////     var first = 0
////    var last = n - 1
////    while first<last {
////        let midpoint = (first+last)/2
////        if guess(midpoint)==0 {
////            return midpoint
////        }else if guess(midpoint)==-1 {
////            first=midpoint + 1
////        } else {
////            last=midpoint
////        }
////    }
////    return first
//// }
//
//
//public class TreeNode {
//      public var val: Int
//      public var left: TreeNode?
//      public var right: TreeNode?
//      public init() { self.val = 0; self.left = nil; self.right = nil; }
//      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//          self.val = val
//          self.left = left
//          self.right = right
//      }
//  }
//
//func maxDepth(_ root: TreeNode?)->Int{
//    if root == nil {
//        return 0
//    }
//    let left=maxDepth(root?.left)
//    let right=maxDepth(root?.right)
//
//    return 1 + max(left, right)
//}
//func minDepth(_ root: TreeNode?)->Int{
//    if root == nil {
//        return 0
//    }
//
//    let left=minDepth(root?.left)
//    let right=minDepth(root?.right)
//    if left != 0 && right != 0 {
//        return 1 + min(left,right)
//    }
//
//    return 1 + left + right
//}
//
//func numIslands(_ grid: [[Character]]) -> Int {
//    guard grid.count > 0 && grid[0].count > 0 else {
//        return 0
//    }
//    var islandCount=0
//    var visited = Set<String>()
//    for r in 0..<grid.count{
//        for c in 0..<grid[0].count {
//            if String(grid[r][c]) == "1" && explore(grid, r, c, &visited) {
//                islandCount+=1
//            }
//        }
//    }
//    return islandCount
//}
//
//func explore(_ grid: [[Character]], _ x: Int, _ y: Int, _  visited: inout Set<String> ) -> Bool {
//    let rowInBounds = 0 <= x && x < grid.count
//    let columnInBounds = 0 <= y && y < grid[0].count
//
//    if !rowInBounds || !columnInBounds {
//        return false
//    }
//    guard String(grid[x][y]) == "1" else {
//        return false
//    }
//    let position: String = "\(x),\(y)"
//    if visited.contains(position) {
//        return false
//    }
//    visited.insert(position)
//
//    explore(grid, x-1, y, &visited)
//    explore(grid, x+1, y, &visited)
//    explore(grid, x, y-1, &visited)
//    explore(grid, x, y+1, &visited)
//    return true
//}
//func majorityElement(_ nums: [Int]) -> Int {
//    var candidate = nums[0]
//    var count=0
//
//    for num in nums {
//        if count==0 {
//            candidate=num
//        }
//        if candidate==num{
//            count+=1
//        }else{
//            count-=1
//        }
//    }
//    return candidate
//}
////print(majorityElement([6,5,5]))
////print(majorityElement([6,5,5,5,5,5,5,5,6,6,6]))
//
//func maxArea(_ height: [Int]) -> Int {
//    var left=0
//    var right=height.count-1
//    var result=0
//    while left<right {
//        result=max(min(height[left], height[right])*(right-left), result)
//        if height[left]>height[right] {
//            right-=1
//        }
//        else{
//            left+=1
//        }
//    }
//    return result
//}
////print(maxArea([4,3,2,1,4]))
////print(maxArea([1,2,1]))
////print(maxArea([1,1]))
////print(maxArea([4,3,2,1,4,5,6]))
//func maxProfit(_ prices: [Int]) -> Int {
//    var  profit = 0
//    var i=0
//    for _ in prices{
//        if prices.count-1==i {
//            break
//        }
//        if prices[i+1] > prices[i] {
//            profit += prices[i+1] - prices[i]
//        }
//        i+=1
//    }
//    return profit
//}
////print(maxProfit([1,2,3,4,5]))
////print(maxProfit([7,1,5,3,6,4]))
////print(maxProfit([7,6,5,4]))
//func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
//    var plantingSpots=n
//    var i = 0
//    if flowerbed.count == 0 {
//        return false
//    }
//
//    while flowerbed.count > i && plantingSpots > 0{
//        if flowerbed[i]==0{
//            let outOfBounds = flowerbed.count == i+1
//            if outOfBounds || flowerbed[i+1] == 0{
//                plantingSpots-=1
//            }else{
//                i+=1
//            }
//        }
//        i+=2
//    }
//    if plantingSpots==0 {
//        return true
//    }
//    return false
//}
////0,1,2,3,4,5
////0,0,0,1,0,0
////print(canPlaceFlowers([1,0,0,0,1], 1))//true
////print(canPlaceFlowers([1,0,0,0,1], 2))//false
////print(canPlaceFlowers([1,0,0,0,1,1,0,0,0,0,0,0], 4))//true
////print(canPlaceFlowers([0], 1))//true
////print(canPlaceFlowers([0,1,0], 1))//false
////print(canPlaceFlowers([0,0,0,0,1], 2))//true
////print(canPlaceFlowers([0,0,0], 2))//true
////print(canPlaceFlowers([1,0,0,0], 1))//true
//
//
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//    var l1 = l1
//    var l2 = l2
//    var val = 0
//    var exceed = 0
//    let head =  ListNode(0)
//    var current: ListNode? = head
//    while !((l1 == nil) && (l2 == nil) && (exceed==0)){
//        val = exceed
//        if l1 != nil {
//            val += l1!.val
//            l1 = l1!.next
//        }
//        if l2 != nil {
//            val += l2!.val
//            l2 = l2!.next
//        }
//        if val >= 10 {
//            val = val % 10
//            exceed = 1
//        }
//        else{
//            exceed = 0
//        }
//        print(val)
//        current?.next=ListNode(val)
//        current=current?.next
//
//    }
//    return head.next
//}
//
//
//func getListNode2() -> ListNode{
//    let head = ListNode(0)
//    var node = head
//    let list = [9,9,9,9]
//    var i=4
//    while i>0 {
//        i-=1
//        node.next=ListNode(list[i])
//        node=node.next!
//    }
//    return head.next!
//}
//func getListNode1() -> ListNode{
//    let head = ListNode(0)
//    var node = head
//    let list = [9,9,9,9,9,9,9]
//    var i=7
//    while i>0 {
//        i-=1
//        node.next=ListNode(list[i])
//        node=node.next!
//    }
//    return head.next!
//}
//func getValListNode(_ node: ListNode?){
//    print("kkkkk")
//    var node=node
//    while node != nil{
//        print(node!.val)
//        node=node!.next
//
//    }
//
//}
////let node1=getListNode1()
////let node2=getListNode2()
//////getValListNode(node1)
//////print(node1)
//////getValListNode(node1)
//////print("sep")
//////getValListNode(node2)
//////print("sep")
////getValListNode(addTwoNumbers(node1 , node2))
//
//func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double{
//    var i=0
//    var j=0
//    var numbers = [Int]()
//
//    while i<nums1.count && j < nums2.count {
//        if nums1[i] < nums2[j] {
//            numbers.append(nums1[i])
//            i+=1
//        }
//        else{
//            numbers.append(nums2[j])
//            j+=1
//        }
//    }
//
//    while i<nums1.count {
//        numbers.append(nums1[i])
//        i+=1
//    }
//    while j<nums2.count {
//        numbers.append(nums2[j])
//        j+=1
//    }
//    var median:Double
//
//    if numbers.count % 2 == 0 {
//        let secondIndex=numbers.count/2
//        let firstIndex=secondIndex-1
//        median = (Double(numbers[secondIndex])+Double(numbers[firstIndex]))/2
//    }else{
//        median = Double(numbers[numbers.count/2])
//    }
//    return median
//}
//
////print(findMedianSortedArrays([1,2,3,4], [5,6,7,8]))
//
////
////func permute(_ nums: [Int]) -> [[Int]] {
////    var result:[[Int]]=[]
////    var numbers = nums
////    go_permute(&numbers, &result, 0)
////    return result
////
////}
////func go_permute(_ nums: inout[Int],_ result: inout[[Int]],_ start: Int ){
////    if nums.count<=start {
////        result.append(nums)
////        return
////    }
////    for i in start..<nums.count {
////        nums.swapAt(i, start)
////        go_permute(&nums, &result, start+1)
////        nums.swapAt(i, start)
////    }
////}
//
////print(permute([1,2,3]))
//
//
//func trap(_ height: [Int]) -> Int {
//    var res = 0
//    var left = 0
//    var right = height.count-1
//    var maxLeft = 0
//    var maxRight = 0
//    while left <= right{
//        if height[left] <= height[right]{
//            if height[left] > maxLeft{
//                maxLeft = height[left]
//            }
//            else{
//                res += maxLeft - height[left]
//            }
//            left += 1
//        }
//        else{
//            if height[right] >= maxRight {
//                maxRight = height[right]
//            }
//            else{
//                res += maxRight - height[right]
//            }
//            right -= 1
//        }
//
//
//    }
//    return res
//}
////print(trap([0,1,0,2,1,0,1,3,2,1,2,1]))
//
//func permuteUnique(_ nums: [Int]) -> [[Int]] {
//    var result:[[Int]]=[]
//    var uniques: Set = Set<String>()
//    var numbers = nums
//    go_permute_unique(&numbers, &result, 0, &uniques)
//    return result
//
//}
//func go_permute_unique(_ nums: inout[Int],_ result: inout[[Int]],_ start: Int, _  uniques: inout Set<String>){
//    if nums.count<=start {
//        var string: String = ""
//        for i in nums {
//            string+="\(i)"
//        }
//        if !(uniques.contains(string)) {
//            uniques.insert(string)
//        }else{
//            return
//        }
//        result.append(nums)
//        return
//    }
//
//    for i in start..<nums.count {
//        nums.swapAt(i, start)
//        go_permute_unique(&nums, &result, start+1, &uniques)
//        nums.swapAt(i, start)
//    }
//}

//print(permuteUnique([1,1,3]))

//func myPow(_ x: Double, _ n: Int) -> Double {
//    var power = n
//    var base = x
//    if power == 0 {
//        return 1
//    }
//    if power == 1 {
//        return base
//    }
//    if power < 0 {
//        power = -power
//        base = 1 / base
//    }
//    let tmp = myPow(base, power/2)
//    if power%2 == 0 {
//        return tmp * tmp
//    }
//    return tmp * tmp * base
//   }
//print(myPow(2.0, -2))
//print(myPow(2.0, 10))
//print(myPow(1.0, 10))


//func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
//    var result: [[Int]] = []
//    var copiedCandidates = candidates
//    copiedCandidates.sort()
//    combinationSumRecursive([Int](), copiedCandidates, target, &result, 0)
//    return result
//  }
//
//func combinationSumRecursive(_ list: [Int], _ candidates: [Int], _ target: Int, _ result: inout [[Int]], _ index: Int) {
//    if target == 0 {
//        result.append(list)
//        return
//    }
//    for i in index..<candidates.count {
//        let newTarget: Int = target - candidates[i]
//        if newTarget<0 {
//            break
//        }
//        var copiedList: [Int] = Array<Int>(list)
//        copiedList.append(candidates[i])
//        combinationSumRecursive(copiedList, candidates, newTarget, &result, i)
//    }
//  }

//func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
//    var result: [[Int]] = []
//    var copiedCandidates = candidates
//    copiedCandidates.sort()
//    combinationSumRecursive2([Int](), copiedCandidates, target, &result, 0)
//    return result
//  }
//
//func combinationSumRecursive2(_ list: [Int], _ candidates: [Int], _ target: Int, _ result: inout [[Int]], _ index: Int) {
//    if target == 0 {
//        result.append(list)
//        return
//    }
//    var ii = index - 1
//    for i in index..<candidates.count {
//        if ii >= i {
//            continue
//        }
//        let newTarget: Int = target - candidates[i]
//        if newTarget<0 {
//            break
//        }
//        var copiedList: [Int] = Array<Int>(list)
//        copiedList.append(candidates[i])
//        combinationSumRecursive2(copiedList, candidates, newTarget, &result, i + 1)
//        ii = i
//        while ii+1 < candidates.count && candidates[ii+1] == candidates[ii] {
//            ii += 1
//        }
//    }
//  }
////print(combinationSum([2,3,6,7], 7))
////print(combinationSum([2,7,6,3,5,1],
//       //                9))
//print(combinationSum2([10,1,2,7,6,1,5],
//                       8))   //[[1,1,6],[1,2,5],[1,7],[2,6]]

//
//func jump(_ nums: [Int]) -> Int {
//    if nums.count == 1 {
//        return 0
//    }
//    var needChoose = 0
//    var canReach = 0
//    var step = 0
//    for i in 0..<nums.count {
//        let x = nums[i]
//        if i+x > canReach {
//            canReach = i + x
//            if canReach >= nums.count-1 {
//                return step + 1
//            }
//        }
//        if i == needChoose {
//            needChoose = canReach
//            step += 1
//        }
//    }
//    return step
//}
//print(jump([2,3,1,1,4]))//2
//print(jump([2,1,1,1,4]))//2
//
//extension String {
//
//    var length: Int {
//        return count
//    }
//
//    subscript (i: Int) -> String {
//        return self[i ..< i + 1]
//    }
//
//    func substring(fromIndex: Int) -> String {
//        return self[min(fromIndex, length) ..< length]
//    }
//
//    func substring(toIndex: Int) -> String {
//        return self[0 ..< max(0, toIndex)]
//    }
//    func slice(fromIndex: Int, toIndex: Int) -> String {
//        return self[min(fromIndex, length) ..< max(0, toIndex)]
//    }
//
//    subscript (r: Range<Int>) -> String {
//        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
//                                            upper: min(length, max(0, r.upperBound))))
//        let start = index(startIndex, offsetBy: range.lowerBound)
//        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
//        return String(self[start ..< end])
//    }
//}
//func isPalindrome(_ s: String) -> Bool {
//
//    var array =  Array(s.filter {!$0.isWhitespace}.lowercased())
//    array.removeAll { (c) -> Bool in
//        !(c.isLetter || c.isNumber)
//    }
//    return checkIsPalindrome(array)
//}
//
//func checkIsPalindrome(_ s: [Character]) -> Bool {
//    if s.count == 0 {
//       return true
//    }
//    if s.count == 1 {
//        return true
//    }
//
//    if s[0]==s[s.count-1]{
//        let copiedStr = Array(s[1..<s.count-1])
//        return checkIsPalindrome(copiedStr)
//    }
//    return false
//   }
//extension Character {
//    var isValid: Bool {
//        return isLetter || isNumber
//    }
//}
//func isPalindrome(_ s: String) -> Bool {
//        var i = 0, j = s.count - 1
//        let elements = Array(s.lowercased())
//        while i < j {
//            while !elements[i].isValid && i < j {
//                i += 1
//            }
//
//            while !elements[j].isValid && i < j {
//                j -= 1
//            }
//
//            if elements[i] != elements[j] {
//                return false
//            } else {
//                i += 1
//                j -= 1
//            }
//        }
//
//        return true
//    }
//print(isPalindrome("A man, a plan, a canal: Panama"))


//func combine(_ n: Int, _ k: Int) -> [[Int]] {
//    var numbers: [Int] = []
//    var result: [[Int]] = []
//    combineFn(&numbers, &result, k, 1, n)
//    return result
//}
//func combineFn(_ numbers: inout [Int],_ result: inout [[Int]], _ k: Int, _ index: Int, _ n: Int) {
//    if numbers.count ==  k {
//        result.append(Array(numbers))
//        return
//    }
//    for i in index..<n+1 {
//        numbers.append(i)
//        combineFn(&numbers, &result, k, i+1, n)
//        numbers.popLast()
//    }
//}
//print(combine(4,2))
//[2,4],
// [3,4],
// [2,3],
// [1,2],
// [1,3],
// [1,4],

//func climbStairs(_ n: Int) -> Int {
//    var first = 1
//    var second = 1
//    for _ in 0..<n-1 {
//        let storedVal = first
//        first = second + storedVal
//        second = storedVal
//    }
//    return first
//  }
//print(climbStairs(2))
//print(climbStairs(3))



//Write a program to solve a Sudoku puzzle by filling the empty cells.
//
//A sudoku solution must satisfy all of the following rules:
//
//Each of the digits 1-9 must occur exactly once in each row.
//Each of the digits 1-9 must occur exactly once in each column.
//Each of the digits 1-9 must occur exactly once in each of the 9 3x3 sub-boxes of the grid.
//The '.' character indicates empty cells.
//func solveSudoku(_ board: inout [[Character]]) {
//
//}

//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//
//    var i = 0
//    var j = 0
//    var copiedNums1 = nums1
//    var copiedNums2 = nums2
//    var zeroCount = n - 1
//    while zeroCount>=0 {
//        if copiedNums1.last==0 {
//            copiedNums1.removeLast()
//        }
//        else if copiedNums2.last==0{
//            copiedNums2.removeLast()
//        }
//
//        zeroCount-=1
//    }
//    nums1 = []
//
//    while i<copiedNums1.count && j<copiedNums2.count {
//        if copiedNums1[i]<copiedNums2[j] {
//            let num = copiedNums1[i]
//            nums1.append(num)
//            i+=1
//        }
//        else{
//            let num = copiedNums2[j]
//            nums1.append(num)
//            j+=1
//        }
//
//    }
//    while i<copiedNums1.count {
//        let num = copiedNums1[i]
//        nums1.append(num)
//        i+=1
//
//    }
//    while j<copiedNums2.count {
//        let num = copiedNums2[j]
//        nums1.append(num)
//        j+=1
//
//    }
//
//  }
////var nums1 = [1,2,3,0,0,0]
////merge(&nums1, 3, [2,5,6], 3)
//var nums1 = [-1,0,0,3,3,3,0,0,0]
//merge(&nums1, 6, [1,2,2], 3)
//print(nums1)//[1,2,2,3,5,6] [-1,0,0,1,2,2,3,3,3]

//func singleNumber(_ nums: [Int]) -> Int {
//    var map : [Int: Bool] = [:]
//    for i in nums {
//        if map[i] != nil {
//            map.removeValue(forKey: i)
//        }else{
//            map[i]=true
//        }
//    }
//    //print(map)
//    return map.keys.first!
//  }
//let nums = [2,2,1]
//print(singleNumber(nums))//1
//let nums1 = [4,1,2,1,2]
//print(singleNumber(nums1))//4
//let nums2 = [1]
//print(singleNumber(nums2))//1


//class MedianFinder {
//    var list: [Int] = []
//
//    init() {
//
//    }
//
//    func addNum(_ num: Int) {
//        list.append(num)
//    }
//
//    func findMedian() -> Double {
//        list.sort()
//        let length = list.count
//        if length % 2 == 0 {
//            let sum = Double((list[(length/2)-1]+list[length/2]))
//            return sum/Double(2)
//        }
//        else{
//            return Double(list[length / 2])
//        }
//
//    }
//}
//let test = MedianFinder()
//test.addNum(4)
//test.addNum(5)
//test.addNum(6)
//test.addNum(7)
//test.addNum(8)
//test.addNum(9)
//print(test.findMedian())

//func generate(_ numRows: Int) -> [[Int]] {
//    var result: [[Int]] = []
//    
//    for i in 0..<numRows {
//        var row: [Int] = []
//        for j in 0..<i+1 {
//           
//            if j==0 || j==i {
//                row.append(1)
//            }else{
//                let previousRow: [Int] = result[i-1]
//                let first = previousRow[j-1]
//                let second = previousRow[j]
//                row.append(first+second)
//            }
//        }
//     
//        result.append(row)
//    }
//    
//    return result
//    
//   }
//print(generate(5))

 // Definition for singly-linked list.
//  public class ListNode {
//      public var val: Int
//      public var next: ListNode?
//      public init() { self.val = 0; self.next = nil; }
//      public init(_ val: Int) { self.val = val; self.next = nil; }
//      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//  }
//
//class Solution {
//    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//        guard let head = head else {
//            return nil
//        }
//        var newHead = head
//                
//        while newHead.next != nil {
//            if newHead.next!.val == newHead.val {
//                newHead.next = newHead.next!.next
//            } else {
//                newHead = newHead.next!
//            }
//        }
//                
//        return head
//        
//    }
//}
