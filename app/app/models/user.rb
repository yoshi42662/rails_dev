class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
         # , :omniauthable

  validates :name, presence: true
  validates :slug, presence: true

  before_validation :set_slug, on: :create
  before_validation :set_name, on: :create

  private

  def set_slug
    self.slug = SecureRandom.hex(8) unless self.slug.present?
  end

  def set_name
    self.name = "名無し #{SecureRandom.hex(6)}" unless self.name.present?
  end
end
