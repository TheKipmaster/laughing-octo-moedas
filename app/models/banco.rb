class Banco < ActiveRecord::Base
  has_many :conta_bancaria
end
