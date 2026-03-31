def calculate_simple_interest(principal, rate, time):
    """Calculate simple interest and return SI and total amount."""
    si = (principal * rate * time) / 100
    total = principal + si
    return si, total


def main():
    print("=== Simple Interest Calculator ===\n")
    principal = float(input("Enter Principal amount: "))
    rate = float(input("Enter Rate of interest (% per year): "))
    time = float(input("Enter Time (years): "))

    si, total = calculate_simple_interest(principal, rate, time)

    print(f"\nPrincipal:         ₹{principal:.2f}")
    print(f"Rate:              {rate}% per annum")
    print(f"Time:              {time} year(s)")
    print(f"Simple Interest:   ₹{si:.2f}")
    print(f"Total Amount:      ₹{total:.2f}")


if __name__ == "__main__":
    main()
