# Simple Interest Calculator

A Python program to calculate simple interest given principal, rate, and time.

## Formula

```
Simple Interest (SI) = (Principal × Rate × Time) / 100
Total Amount         = Principal + SI
```

## Usage

Run the script and enter the values when prompted:

```bash
python simple_interest.py
```

### Example

```
=== Simple Interest Calculator ===

Enter Principal amount: 10000
Enter Rate of interest (% per year): 5
Enter Time (years): 3

Principal:         ₹10000.00
Rate:              5.0% per annum
Time:              3.0 year(s)
Simple Interest:   ₹1500.00
Total Amount:      ₹11500.00
```

## Function Reference

### `calculate_simple_interest(principal, rate, time)`

| Parameter   | Type    | Description                        |
|-------------|---------|------------------------------------|
| `principal` | `float` | Initial amount of money            |
| `rate`      | `float` | Annual interest rate (percentage)  |
| `time`      | `float` | Duration in years                  |

**Returns:** `(simple_interest, total_amount)` as a tuple of floats.
