# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIUnEnrollmentSetting < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_ids
        #
        #   @return [Array<String>]
        required :flow_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :flowIds

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIUnEnrollmentSetting::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIUnEnrollmentSetting::Type }

        # @!method initialize(flow_ids:, type:)
        #   @param flow_ids [Array<String>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIUnEnrollmentSetting::Type]

        # @see HubspotSDK::Models::Automation::APIUnEnrollmentSetting#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ALL = :ALL
          SELECTIVE = :SELECTIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
