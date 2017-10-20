class AddReferencesenterpriseToComplaint < ActiveRecord::Migration[5.1]
  def change
    add_reference :complaints, :enterprise, foreign_key: true
  end
end
