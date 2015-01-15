class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :credit
      t.string :url
      t.string :status
      t.timestamp :started_at
      t.timestamp :finished_at
    end
  end
end
