class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.text :subject
      t.text :notes
      t.text :action_items

      t.timestamps
    end
  end
end
