# AI Copilot Guardian Prototype
# This module simulates a logic layer that monitors smart contract behavior in real time

def monitor_transaction(tx_data):
    # Basic logic for suspicious activity (placeholder)
    if tx_data.get("value", 0) > 1_000_000:
        return "Alert: High-value transaction detected"
    if tx_data.get("type") == "drain_liquidity":
        return "Alert: Liquidity drain pattern detected"
    return "Transaction normal"

# Example usage
if __name__ == "__main__":
    sample_tx = {"type": "drain_liquidity", "value": 5000000}
    print(monitor_transaction(sample_tx))
