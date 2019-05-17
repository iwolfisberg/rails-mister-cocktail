class DeleteDescriptionFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :description
  end
end
