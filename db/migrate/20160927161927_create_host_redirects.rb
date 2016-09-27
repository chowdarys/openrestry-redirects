class CreateHostRedirects < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'

    create_table :host_redirects, id: :uuid do |t|
      t.string :orig
      t.string :dest

      t.timestamps
    end

    add_index :host_redirects, :orig, unique: true
  end
end
