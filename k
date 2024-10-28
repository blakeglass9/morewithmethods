using System;

namespace MathApp
{
    public class MathOperations
    {
        // Method 1: Takes an integer, adds 5, and returns the result as an integer
        public int PerformOperation(int number)
        {
            return number + 5;
        }

        // Method 2: Takes a decimal, multiplies by 2, and returns the result as an integer
        public int PerformOperation(decimal number)
        {
            return (int)(number * 2);  // Cast result to int
        }

        // Method 3: Takes a string, converts it to an integer, subtracts 3, and returns the result as an integer
        public int PerformOperation(string number)
        {
            int parsedNumber;

            // Try to convert the string to an integer
            if (int.TryParse(number, out parsedNumber))
            {
                return parsedNumber - 3;
            }
            else
            {
                throw new ArgumentException("Input string was not in a correct format."); // Throw an exception if conversion fails
            }
        }
    }
}
