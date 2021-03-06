# encoding: utf-8
class Rol < ActiveRecord::Base
  has_and_belongs_to_many :usuarios, join_table: :usuarios_roles
  belongs_to :resource, polymorphic: true

  alias_attribute :nombre, :name

  scopify

  validates :name, presence: true

  scope :globales, ->{ where(resource: nil) }

  def to_param
    nombre
  end
end
