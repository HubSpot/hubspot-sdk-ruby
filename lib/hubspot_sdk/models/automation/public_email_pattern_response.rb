# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicEmailPatternResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the email pattern.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the email pattern was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute template_id
        #   The unique identifier of the email template associated with the pattern.
        #
        #   @return [String]
        required :template_id, String, api_name: :templateId

        # @!attribute updated_at
        #   The date and time when the email pattern was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute thread_email_to_step_order
        #   The order identifying the previous step to which the email thread is linked.
        #
        #   @return [Integer, nil]
        optional :thread_email_to_step_order, Integer, api_name: :threadEmailToStepOrder

        # @!method initialize(id:, created_at:, template_id:, updated_at:, thread_email_to_step_order: nil)
        #   @param id [String] The unique identifier of the email pattern.
        #
        #   @param created_at [Time] The date and time when the email pattern was created.
        #
        #   @param template_id [String] The unique identifier of the email template associated with the pattern.
        #
        #   @param updated_at [Time] The date and time when the email pattern was last updated.
        #
        #   @param thread_email_to_step_order [Integer] The order identifying the previous step to which the email thread is linked.
      end
    end
  end
end
