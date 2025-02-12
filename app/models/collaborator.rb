class Collaborator < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[first_name last_name email uuid] 
  end
end