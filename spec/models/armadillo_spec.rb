require 'spec_helper'

describe Armadillo do
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:codename)}
end

