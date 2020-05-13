package main

import "C"

//export sq
func sq(num int) int {
	return num * num
}

func main() {}
