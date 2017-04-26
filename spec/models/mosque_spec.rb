require 'rails_helper'

RSpec.describe Mosque, type: :model do
  before do
    @mosque = Mosque.new
  end

  it "should create a Mosque object" do
    expect(@mosque).to be_instance_of(Mosque)
  end

  it "should have nil values for name when instantiated" do
    expect(@mosque.name).to be_nil
  end

  it "should have nil values for street when instantiated" do
    expect(@mosque.street).to be_nil
  end

  it "should have nil values for town when instantiated" do
    expect(@mosque.town).to be_nil
  end

  it "should have nil values for state when instantiated" do
    expect(@mosque.state).to be_nil
  end

  it "should have nil values for pin when instantiated" do
    expect(@mosque.pin).to be_nil
  end

  describe "saving" do
    before do
      @mosque.street = '123 Street'
      @mosque.town = 'Anytown'
      @mosque.state = 'Anystate'
    end

    it "should fail saving if name is not provided" do
      @mosque.pin = '123456'
      expect(@mosque.save).to be false
    end

    it "should fail saving if pin is not provided" do
      @mosque.name = 'Any Mosque'
      expect(@mosque.save).to be false
    end
  end

end
