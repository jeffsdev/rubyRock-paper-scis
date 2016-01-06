require('rspec')
require('rock_paper_scis')

describe ("rock_paper_scis") do
  it("returns true if rock is the object and scissors is the argument") do
    expect(rock_paper_scis("rock", "scissors")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(rock_paper_scis("paper", "rock")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(rock_paper_scis("scissors", "paper")).to(eq(true))
  end
end
