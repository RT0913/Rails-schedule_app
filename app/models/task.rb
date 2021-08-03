class Task < ApplicationRecord
  validates :title, {presence: true}
  validates :content, {presence: true}
  validates :start, {presence: true}
  validates :end, {presence: true}
end
