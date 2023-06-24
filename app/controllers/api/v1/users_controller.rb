class Api::V1::UsersController < ApplicationController

  def create

  # 1. Sanitize
  sanitized_params = sanitize_user_params(user_params)


  # 2. Check if college exists in the database
  college = College.find_by(id: sanitized_params[:college_id])
  unless college
    render json: { error: 'College not found' }, status: :bad_request
    return
  end

  # 3. Check if exam exists and belongs to the college
  exam = college.exams.find_by(id: sanitized_params[:exam_id])
  unless exam
    render json: { error: 'Exam not found or does not belong to the college' }, status: :bad_request
    return
  end

  # 4. Find or create a user and assign to the exam
  user = User.find_or_create_by(sanitized_params.slice(:first_name, :last_name, :phone_number))
  user.exam = exam

  # 5. Check if the start_time falls within the exam window
  unless exam.exam_window.cover?(sanitized_params[:start_time])
    render json: { error: 'Start time does not fall within the exam window' }, status: :bad_request
    return
  end

    if user.save
      render json: { message: 'User created successfully' }, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :phone_number, :college_id, :exam_id, :start_time)
  end

  def sanitize_user_params(params)
    sanitized_params = params.transform_values { |value| value.to_s.strip }
    sanitized_params
  end
 end
