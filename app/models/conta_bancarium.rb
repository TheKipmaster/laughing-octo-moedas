class ContaBancarium < ActiveRecord::Base
  belongs_to :user
  belongs_to :banco
end
