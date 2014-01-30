class CreateMonthImages < ActiveRecord::Migration
  def change
    create_table :month_images do |t|
      t.string :month

      t.timestamps
    end
  end
end
