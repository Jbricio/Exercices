using Calculators;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using Xunit;

namespace MockTest
{
    [TestClass]
    public class MocksICalculator
    {
        [TestMethod]
        public void Fibonacci_SimpleValuesShouldCalculate()
        {
            Mock<ICalculator> mockICalculator = new Mock<ICalculator>();
            Series series = new Series(mockICalculator.Object);
            var fibo = series.Fibonacci(10);
            var expected = 55;
            Xunit.Assert.Equal(expected, fibo);
            
        }

        [TestMethod]
        public void Factorial_SimpleValuesShouldCalculate()
        {
            Mock<ICalculator> mockICalculator = new Mock<ICalculator>();
            Series series = new Series(mockICalculator.Object);
            var fact = series.Factorial(3);
            var expected = 6;
            Xunit.Assert.Equal(expected, fact);

        }
    }
}
