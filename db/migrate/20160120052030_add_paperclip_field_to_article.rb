class AddPaperclipFieldToArticle < ActiveRecord::Migration
  def change
          add_attachment :articles, :image

  end
end
