require 'spec_helper'

describe EY::Serverside::Adapter::DisableMaintenancePage do
  it_should_behave_like "it accepts app"
  it_should_behave_like "it accepts instances"
  it_should_behave_like "it accepts verbose"

  it_should_require :app
  it_should_require :instances

  context "with valid arguments" do
    let(:command) do
      adapter = described_class.new do |builder|
        builder.app = "rackapp"
        builder.instances = [{:hostname => 'localhost', :roles => %w[han solo], :name => 'chewie'}]
      end
      adapter.call {|cmd| cmd}
    end

    it "invokes exactly the right command" do
      command.should == "engineyard-serverside _#{EY::Serverside::Adapter::VERSION}_ deploy disable_maintenance_page --app rackapp --instance-names localhost:chewie --instance-roles localhost:han,solo --instances localhost"
    end
  end
end