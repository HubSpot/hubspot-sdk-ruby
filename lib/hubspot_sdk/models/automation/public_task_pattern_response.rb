# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicTaskPatternResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute task_priority
        #
        #   @return [String]
        required :task_priority, String, api_name: :taskPriority

        # @!attribute task_type
        #
        #   @return [String]
        required :task_type, String, api_name: :taskType

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute notes
        #
        #   @return [String, nil]
        optional :notes, String

        # @!attribute queue_id
        #
        #   @return [Integer, nil]
        optional :queue_id, Integer, api_name: :queueId

        # @!attribute subject
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute template_id
        #
        #   @return [Integer, nil]
        optional :template_id, Integer, api_name: :templateId

        # @!attribute thread_email_to_step_order
        #
        #   @return [Integer, nil]
        optional :thread_email_to_step_order, Integer, api_name: :threadEmailToStepOrder

        # @!method initialize(id:, created_at:, task_priority:, task_type:, updated_at:, notes: nil, queue_id: nil, subject: nil, template_id: nil, thread_email_to_step_order: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param task_priority [String]
        #   @param task_type [String]
        #   @param updated_at [Time]
        #   @param notes [String]
        #   @param queue_id [Integer]
        #   @param subject [String]
        #   @param template_id [Integer]
        #   @param thread_email_to_step_order [Integer]
      end
    end
  end
end
