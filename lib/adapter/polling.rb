require_relative 'base'

module Adapter
  class Polling < Base
    attr_accessor :sleep_duration

    def initialize(config_hash)
      super(config_hash)
      @sleep_duration = config_hash['sleep_duration'] || 5 * 60
    end

    def run
      loop do
        submission, assignment = get_submission_and_assignment
        if not submission
          sleep sleep_duration
        else
          submission.score, submission.message = AutoGraderSubprocess.grade(submission.files, assignment.assignment_spec_uri, assignment.assignment_autograder_type)
          submission = assignment.apply_lateness submission  # optionally scales submission by lateness and provides comments.
          submit_response(submission)
        end
      end
    end

    # returns nil if no submission otherwise returns submission object. For XQueue this will be an XQueueSubmission. Others should conform to certain standards. 
    def get_submission
      raise NotImplementedError "abstract method"
    end

    def submit_response
      raise NotImplementedError "abstract method"
    end
  end
end