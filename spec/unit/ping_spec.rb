require 'net/commands/ping'

RSpec.describe Net::Commands::Ping do
  it 'executes `ping` command successfully' do
    output = StringIO.new
    options = {}
    command = Net::Commands::Ping.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
