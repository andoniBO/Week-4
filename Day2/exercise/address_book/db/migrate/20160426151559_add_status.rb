class AddStatus < ActiveRecord::Migration
  def change
    # add_column :contacts do |t|
    #   t.boolean :favorites default: false
    # end
    add_column :contacts, :favorites, :boolean
  end
end
