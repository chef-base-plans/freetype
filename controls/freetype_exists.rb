freetype_path = input('freetype_path', default: '/bin/freetype-config')

describe file(freetype_path) do
  it { should exist }
end
