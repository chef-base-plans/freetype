freetype_test = attribute('freetype_test', default: '/bin/freetype-config --version')

describe bash(freetype_test) do
  its('stdout') { should_not be_empty }
  its('stderr') { should match /No package 'freetype2' found/ }
  its('exit_status') { should eq 0 }
end
