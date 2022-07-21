namespace Calculators;

public class Series
{
    private readonly ICalculator _calculator;

    public Series(ICalculator calculator)
    {
        _calculator = calculator;
    }

    public float Factorial(float n)
    {
        if (n > 1)
            return _calculator.Mul(n, Factorial(n - 1));
        return n;
    }

    public float Fibonacci(float n)
    {
        if (n > 1)
            return _calculator.Add(Fibonacci(n - 1), Fibonacci(n - 2));
        return n;
    }

}