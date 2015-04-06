class AddAnswertextToQuestions < ActiveRecord::Migration
  def self.up
      add_column :questions, :answertext, :text
  end
end
