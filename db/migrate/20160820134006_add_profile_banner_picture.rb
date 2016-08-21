class AddProfileBannerPicture < ActiveRecord::Migration
  def change
    add_column :profiles, :banner_picture, :string
  end
end
