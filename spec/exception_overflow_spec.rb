describe ExceptionOverflow do
  it 'convert attributes to class methods' do
    regex = /ruby exception\n\n(\t.+\n\thttp:\/\/stackoverflow.+\n\n){5}/

    expect{
      raise StandardError, 'ruby exception'
    }.to raise_error(StandardError, regex)
  end
end
