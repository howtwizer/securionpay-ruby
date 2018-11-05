require 'spec_helper'

describe SecurionPay::Events do
  let(:event_id) { 'some_event_id' }
  let(:params) { double }
  let(:communicator) { double }
  let(:path_builder) { double }

  let(:response) { double }
  let(:path) { double }
  let(:path_builder_receive) { :build_events_path }
  let(:path_builder_with) { event_id }
  let(:subject_send_with) { event_id }
  let(:communicator_with) { nil }

  subject do
    described_class
  end

  before do
    subject.communicator = communicator
    subject.path_builder = path_builder
  end

  describe '.retrieve' do
    let(:http_method) { :get }
    let(:method) { :retrieve }
    let(:communicator_with) { nil }
    it_behaves_like 'call_communicator'
  end

  describe '.list' do
    let(:http_method) { :get }
    let(:method) { :list }
    let(:path_builder_with) { nil }
    let(:subject_send_with) { nil }
    it_behaves_like 'call_communicator'
  end
end