class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.create({name: params[:name]})
    candidate_emails(params[:emails], @candidate)

    if @candidate
        render nothing: true
    end
  end

  def candidate_emails(emails, candidate)
    if emails
      emails.each do |email|
        candidate.emails.create({:email => email})
      end
    end

  end

end
