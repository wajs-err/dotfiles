package main

import "fmt"

func main() {
    outer:	
    for j := 0; j < 10; j++ {
        for i := 0; i < 10; i++ {
            fmt.Println(i)	
            if i == j + 5 {
                break outer
            }
        }
    }
}