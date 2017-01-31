class UploadController < ApplicationController
  def upload
  end

  def save
    uploaded_io = params[:picture]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
        render inline: "ekledim :)))))"
      end
  end
end
