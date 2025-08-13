package main

import (
	"fmt"
	"recursive/centaur"
)

func main() {
	var recursions int
	fmt.Print("Enter the number of recursions of the centaur: ")
	fmt.Scan(&recursions)
	centaur.Draw(recursions, 0)
}
