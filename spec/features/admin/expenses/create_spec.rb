RSpec.describe 'Create attachment' do
  let!(:event) { create :event }

  before do
    assume_admin_logged_in
    visit '/admin/expenses/new'
  end

  context 'when valid params' do
    it 'creates an expense' do
      select(event.title, from: 'Event')
      attach_file('expense[attachment]', Rails.root + 'spec/fixtures/images/pivorak.png')

      expect { click_button 'Create Expense' }.to change(Expense, :count).by(1)
    end
  end

  context 'when invalid params' do
    it 'does not create an expense' do
      expect { click_button 'Create Expense' }.to change(Expense, :count).by(0)
    end
  end
end