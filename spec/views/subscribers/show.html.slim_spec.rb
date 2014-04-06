require 'spec_helper'

describe "subscribers/show" do
  before(:each) do
    @subscriber = assign(:subscriber, stub_model(Subscriber,
      :name => "Name",
      :email => "Email",
      :instagram => "Instagram"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Instagram/)
  end
end
