package main

import "fmt"

func main() {
	x, y := 1, 2
	fmt.Println(x, y)

	p := &x
	*p = 0

	p = &y
	*p = 0

	fmt.Println(x, y)
}
