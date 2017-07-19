RSpec.describe Expense, type: :model do
  it { is_expected.to validate_presence_of(:event_id) }
end
