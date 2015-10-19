require 'spec_helper'

describe 'Kamailio' do
  describe user('kamailio') do
    it { should exist }
    it { should belong_to_group 'kamailio' }
  end

  describe service('kamailio') do
    it { should be_enabled }
    it { should be_running }
  end

  describe command('kamctl ps') do
    its(:stdout) { should match /Type=attendant/ }
  end

  describe port(5060) do
    it { should be_listening.with('tcp') }
    it { should be_listening.with('udp') }
  end
end
