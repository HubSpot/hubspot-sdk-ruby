# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class MeetingSettingsResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute criteria
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::MeetingSettingsResponse::Criteria]
        required :criteria, enum: -> { HubspotSDK::Automation::MeetingSettingsResponse::Criteria }

        # @!attribute selling_strategy
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::MeetingSettingsResponse::SellingStrategy]
        required :selling_strategy,
                 enum: -> { HubspotSDK::Automation::MeetingSettingsResponse::SellingStrategy },
                 api_name: :sellingStrategy

        # @!method initialize(criteria:, selling_strategy:)
        #   @param criteria [Symbol, HubspotSDK::Models::Automation::MeetingSettingsResponse::Criteria]
        #   @param selling_strategy [Symbol, HubspotSDK::Models::Automation::MeetingSettingsResponse::SellingStrategy]

        # @see HubspotSDK::Models::Automation::MeetingSettingsResponse#criteria
        module Criteria
          extend HubspotSDK::Internal::Type::Enum

          ALL = :ALL
          NONE = :NONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::MeetingSettingsResponse#selling_strategy
        module SellingStrategy
          extend HubspotSDK::Internal::Type::Enum

          ACCOUNT_BASED = :ACCOUNT_BASED
          LEAD_BASED = :LEAD_BASED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
