require 'spec_helper.rb'

describe Candidate do
  before  do
    @candidate = Candidate.create({name: "Sample Name"})
  end
  it "should return name" do
    expect(@candidate.name).to eq("Sample Name")
  end

  it "should have 2 emails" do
    @candidate.emails.create({email: "example@gmail.com"})
    @candidate.emails.create({email: "example1@gmail.com"})

    expect(@candidate.emails.count).to eq(2)
  end
end
