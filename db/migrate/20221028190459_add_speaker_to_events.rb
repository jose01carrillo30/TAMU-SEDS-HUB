class AddSpeakerToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :speaker_name, :string
    add_column :events, :speaker_image, :string
    add_column :events, :speaker_bio, :text
  end
end
