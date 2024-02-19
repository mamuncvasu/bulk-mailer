class BulkMailer < ApplicationRecord
  has_many_attached :mail_attach
end
