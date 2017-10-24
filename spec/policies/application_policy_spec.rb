# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationPolicy do
  let(:context) { double :context, user: user }
  let(:user) { double :user }
  let(:scope) { double :scope }

  context 'with user' do
    subject { described_class.new(user, scope) }

    it { expect(subject.user).to eq(user) }
    it { expect(subject.context).to eq(user) }
    it { expect(subject.scope).to eq(scope) }
  end

  context 'with context' do
    subject { described_class.new(context, scope) }

    it { expect(subject.user).to eq(user) }
    it { expect(subject.context).to eq(context) }
    it { expect(subject.scope).to eq(scope) }
  end
end
