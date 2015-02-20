require 'serverspec'
set :backend, :exec

describe 'apache' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'localhost works' do
    expect(true).to eq true
  end
  
  it "is installed" do
    expect(package('httpd')).to be_installed
  end

end
