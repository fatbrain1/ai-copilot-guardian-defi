const hre = require("hardhat");

async function main() {
  const ThinkingCoin = await hre.ethers.getContractFactory("ThinkingCoin");
  const token = await ThinkingCoin.deploy("Thinking Coin", "THC");

  await token.deployed();

  console.log("Thinking Coin deployed to:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
