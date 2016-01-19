require 'spec_helper'

describe ChefFS do
  it 'has a version number' do
    expect(ChefFS::VERSION).not_to be nil
  end

  it 'does nothing by default' do
    expect_recipe {
    }.to be_up_to_date.and be_idempotent
  end
  
  it 'raises an error if X happens' do
    expect_converge {
      raise ArgumentError
    }.to raise_error(ArgumentError)
  end
end
