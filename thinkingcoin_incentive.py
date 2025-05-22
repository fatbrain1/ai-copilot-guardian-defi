# Prototype logic for Thinking Coin incentive system

def reward_user(action_type):
    if action_type == "exploit_detection":
        return 100  # Reward in Thinking Coin
    elif action_type == "guardian_update":
        return 50
    return 0

if __name__ == "__main__":
    print("Reward:", reward_user("exploit_detection"))
