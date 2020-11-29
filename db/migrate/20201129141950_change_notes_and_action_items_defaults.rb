class ChangeNotesAndActionItemsDefaults < ActiveRecord::Migration[6.0]
  def change
  change_column_default(
  :meetings,
  :notes,
  from: nil, 
  to: "notes default"
  )
  end
end
