class AddPaperFileToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :paperFile, :string
  end
end
