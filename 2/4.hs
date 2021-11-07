import Data.Char

isPalindrome :: [Char] -> Bool
isPalindrome s = s == reverse s

getElemAtIdx (a, i) = last (take (i + 1) a)

capitalize :: [Char] -> [Char]
capitalize w = [toUpper (head w)] ++ tail w
