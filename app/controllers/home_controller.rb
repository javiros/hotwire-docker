class HomeController < ApplicationController
  # @route GET /turbo_frame_form 
  def turbo_frame_form
  end

  # @route POST /turbo_frame_submit 
  def turbo_frame_submit
    extracted_anynumber = params[:any][:anynumber].to_i + 50
    render :turbo_frame_form, status: :ok, locals: { anynumber: extracted_anynumber, comment: 'turbo_frame_submit ok' }
  end
end
