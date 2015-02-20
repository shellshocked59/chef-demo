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
  
  #is port 80 open
  describe port(80) do
    it { should be_listening.on('127.0.0.1').with('tcp') }
  end
  
  #localhost return
  it 'should respond to an HTTP request' do
    expect(command 'curl localhost').to return_stdout /.*<title>localhost<\/title>.*/
  end

  
  
end
