class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user
      t.string :uid
      t.string :provider

      t.timestamps
    end
    add_index :identities, :user_id
  end
end
