class ChangeActionItemsDefaults < ActiveRecord::Migration[6.0]
  def change
    change_column_default(
      :meetings,
      :action_items,
      from: nil, 
      to: "action items default"
      )
  end
end
