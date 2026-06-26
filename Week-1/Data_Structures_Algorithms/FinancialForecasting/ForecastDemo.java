package FinancialForecasting;

public class ForecastDemo {
    static void main() {
        double currentValue = 10000;
        double growthRate = 0.10;
        int years = 3;

        double result = FinancialForecast.futureValue(currentValue, growthRate, years);

        System.out.println("Current Value : " + currentValue);
        System.out.println("Growth Rate   : " + (growthRate * 100) + "%");
        System.out.println("Years         : " + years);
        System.out.println("Future Value  : " + result);
    }
}
