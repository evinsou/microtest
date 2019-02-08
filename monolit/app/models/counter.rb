class Counter < ApplicationRecord

  attribute :result, default: 1

  enum result: {
    awaiting: 1,
    sent: 2
  }
end
