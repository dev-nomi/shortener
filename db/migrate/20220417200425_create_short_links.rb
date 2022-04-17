class CreateShortLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :short_links do |t|
      t.string :name
      t.string :long_url
      t.string :stub, limit: 8
      
      t.timestamps
    end
  end
end
