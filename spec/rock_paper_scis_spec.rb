require('rspec')
require('rock_paper_scis')

describe ("String#rock_paper_scis") do
  before :each do
    srand(67809)
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(("rock").rock_paper_scis).to(eq(["Computer","paper"]))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(("paper").rock_paper_scis).to(eq(["Draw","paper"]))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect(("scissors").rock_paper_scis).to(eq(["Player","paper"]))
  end
end
