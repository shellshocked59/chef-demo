require 'serverspec'
set :backend, :exec

describe 'apache' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'localhost works' do
    expect(true).to eq true
  end

end
