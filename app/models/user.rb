class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :buys
  has_many :tickets, through: :buys
  has_many :trips

  validates :first_name, :last_name, :email, presence: true
  validates :dni, uniqueness: true
  validates :phone, uniqueness: { scope: [:dni] }
  validates :email, uniqueness: true
  validates_format_of :email, with: EMAIL_FORMAT
  validates_format_of :first_name, :last_name, with: NAMES_FORMAT
  validates :password, length: { minimum: 3 }, allow_nil: false, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, allow_nil: false, if: lambda {
                                                                            new_record? || changes[:crypted_password]
                                                                          }
end
