# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceStepResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute action_type
        #
        #   @return [String]
        required :action_type, String, api_name: :actionType

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute delay_millis
        #
        #   @return [Integer]
        required :delay_millis, Integer, api_name: :delayMillis

        # @!attribute step_order
        #
        #   @return [Integer]
        required :step_order, Integer, api_name: :stepOrder

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute email_pattern
        #
        #   @return [HubspotSDK::Models::Automation::PublicEmailPatternResponse, nil]
        optional :email_pattern,
                 -> { HubspotSDK::Automation::PublicEmailPatternResponse },
                 api_name: :emailPattern

        # @!attribute task_pattern
        #
        #   @return [HubspotSDK::Models::Automation::PublicTaskPatternResponse, nil]
        optional :task_pattern,
                 -> {
                   HubspotSDK::Automation::PublicTaskPatternResponse
                 },
                 api_name: :taskPattern

        # @!method initialize(id:, action_type:, created_at:, delay_millis:, step_order:, updated_at:, email_pattern: nil, task_pattern: nil)
        #   @param id [String]
        #   @param action_type [String]
        #   @param created_at [Time]
        #   @param delay_millis [Integer]
        #   @param step_order [Integer]
        #   @param updated_at [Time]
        #   @param email_pattern [HubspotSDK::Models::Automation::PublicEmailPatternResponse]
        #   @param task_pattern [HubspotSDK::Models::Automation::PublicTaskPatternResponse]
      end
    end
  end
end
