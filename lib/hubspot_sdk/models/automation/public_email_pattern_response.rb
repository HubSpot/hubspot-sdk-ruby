# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicEmailPatternResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute template_id
        #
        #   @return [String]
        required :template_id, String, api_name: :templateId

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute thread_email_to_step_order
        #
        #   @return [Integer, nil]
        optional :thread_email_to_step_order, Integer, api_name: :threadEmailToStepOrder

        # @!method initialize(id:, created_at:, template_id:, updated_at:, thread_email_to_step_order: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param template_id [String]
        #   @param updated_at [Time]
        #   @param thread_email_to_step_order [Integer]
      end
    end
  end
end
