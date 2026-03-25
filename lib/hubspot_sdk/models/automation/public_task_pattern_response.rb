# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicTaskPatternResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the task pattern.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the task pattern was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute task_priority
        #   The priority level assigned to the task.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicTaskPatternResponse::TaskPriority]
        required :task_priority,
                 enum: -> { HubspotSDK::Automation::PublicTaskPatternResponse::TaskPriority },
                 api_name: :taskPriority

        # @!attribute task_type
        #   The type of task, such as an email or call.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::PublicTaskPatternResponse::TaskType]
        required :task_type,
                 enum: -> { HubspotSDK::Automation::PublicTaskPatternResponse::TaskType },
                 api_name: :taskType

        # @!attribute updated_at
        #   The date and time when the task pattern was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute notes
        #   Additional notes or comments associated with the task.
        #
        #   @return [String, nil]
        optional :notes, String

        # @!attribute queue_id
        #   The identifier for the queue associated with the task.
        #
        #   @return [Integer, nil]
        optional :queue_id, Integer, api_name: :queueId

        # @!attribute subject
        #   The subject line of the task.
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute template_id
        #   The identifier for the template used in the task.
        #
        #   @return [Integer, nil]
        optional :template_id, Integer, api_name: :templateId

        # @!attribute thread_email_to_step_order
        #   The order of the step to which the email thread is related.
        #
        #   @return [Integer, nil]
        optional :thread_email_to_step_order, Integer, api_name: :threadEmailToStepOrder

        # @!method initialize(id:, created_at:, task_priority:, task_type:, updated_at:, notes: nil, queue_id: nil, subject: nil, template_id: nil, thread_email_to_step_order: nil)
        #   @param id [String] The unique identifier for the task pattern.
        #
        #   @param created_at [Time] The date and time when the task pattern was created.
        #
        #   @param task_priority [Symbol, HubspotSDK::Models::Automation::PublicTaskPatternResponse::TaskPriority] The priority level assigned to the task.
        #
        #   @param task_type [Symbol, HubspotSDK::Models::Automation::PublicTaskPatternResponse::TaskType] The type of task, such as an email or call.
        #
        #   @param updated_at [Time] The date and time when the task pattern was last updated.
        #
        #   @param notes [String] Additional notes or comments associated with the task.
        #
        #   @param queue_id [Integer] The identifier for the queue associated with the task.
        #
        #   @param subject [String] The subject line of the task.
        #
        #   @param template_id [Integer] The identifier for the template used in the task.
        #
        #   @param thread_email_to_step_order [Integer] The order of the step to which the email thread is related.

        # The priority level assigned to the task.
        #
        # @see HubspotSDK::Models::Automation::PublicTaskPatternResponse#task_priority
        module TaskPriority
          extend HubspotSDK::Internal::Type::Enum

          HIGH = :HIGH
          LOW = :LOW
          MEDIUM = :MEDIUM
          NONE = :NONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of task, such as an email or call.
        #
        # @see HubspotSDK::Models::Automation::PublicTaskPatternResponse#task_type
        module TaskType
          extend HubspotSDK::Internal::Type::Enum

          CALL = :CALL
          EMAIL = :EMAIL
          LINKED_IN_CONNECT = :LINKED_IN_CONNECT
          LINKED_IN_MESSAGE = :LINKED_IN_MESSAGE
          MEETING = :MEETING
          TODO = :TODO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
