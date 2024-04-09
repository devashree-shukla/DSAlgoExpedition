## Recursion

Recursion is a method of solving problems where a function calls itself as a subroutine. This allows the function to be repeated several times, as it can call itself during its execution.

## Key Concepts

- Base Case: The condition under which the recursion stops. This is crucial to prevent infinite loops and stack overflow errors.

- Recursive Case: The part of the function that calls itself with modified arguments.

- Call Stack: The stack that keeps track of function calls. Each recursive call adds a layer to the stack, which is popped off when the function returns a value.

## Example

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1 // Base case
    } else {
        return n * factorial(n - 1) // Recursive case
    }
}
print(factorial(5)) // Output: 120


func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n // Base cases
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2) // Recursive case
    }
}
print(fibonacci(10)) // Output: 55
