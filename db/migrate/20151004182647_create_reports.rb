class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :details
      t.string :phone_no
      t.string :message

      t.timestamps null: false
    end
  end
end
