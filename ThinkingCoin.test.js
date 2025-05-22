const { expect } = require("chai");

describe("ThinkingCoin", function () {
  it("Should deploy the contract and assign founder's reserve", async function () {
    const [owner] = await ethers.getSigners();
    const ThinkingCoin = await ethers.getContractFactory("ThinkingCoin");
    const token = await ThinkingCoin.deploy("Thinking Coin", "THC");

    await token.deployed();

    const founderBalance = await token.balanceOf(owner.address);
    expect(founderBalance).to.equal("10000000000000000000000000"); // 10M tokens
  });
});