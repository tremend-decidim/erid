# frozen_string_literal: true
# This migration comes from decidim (originally 20201010124755)

class CreateDecidimUserModerations < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_user_moderations do |t|
      t.belongs_to :decidim_user, foreign_key: true
      t.integer :report_count, default: 0, null: false

      t.timestamps
    end
  end
end
