# frozen_string_literal: true

RSpec.describe '`net ping` command', type: :cli do
  it 'executes `net help ping` command successfully' do
    output = `net help ping`
    expected_output = <<~OUT
      Usage:
        net ping
      
      Options:
        -h, [--help], [--no-help]  # Display usage information
      
      Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
