require 'rails_helper'

RSpec.describe Class, type: :model do
  let(:task) { Task.new(title: 'Task', details: 'Once upon a time I had to invent a taskkkkkkkkkkkkkkkkkkkkkkkkkkk') }

  describe '#initialize' do
    it 'when valid' do
      expect(task.valid?).to eq(true)
    end
  end

  it 'when not valid' do
    task.title = nil
    expect(task.valid?).to eq(false)
  end

  it 'truncated_details' do
    expect(task.truncated_details).to eq('Once upon a time I had to invent a taskkkkkkkkkkkkkkkkkkkkkkkkkkk')
  end
end
