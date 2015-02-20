require 'serverspec'
set :backend, :exec

describe 'apache' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  #apache is installed
  it "is installed" do
    expect(package('httpd')).to be_installed
  end
  
  #apache is running
  it "is running" do
    expect(service 'httpd').to be_running
  end
  
  #is port 80 open
  describe port(80) do
    it { should be_listening.on('127.0.0.1').with('tcp') }
  end
  
  #localhost return  
  describe command('curl localhost') do
    its(:stdout) { should eq "it works!" }
  end

  
  
end