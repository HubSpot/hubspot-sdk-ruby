# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIUnEnrollmentSetting < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_ids
        #   The IDs of the flows to unenroll an object in if it's enrolled in this flow.
        #
        #   @return [Array<String>]
        required :flow_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :flowIds

        # @!attribute type
        #   The type of unenrollment to perform:
        #
        #   "ALL" - unenroll the object from all other flows
        #
        #   "SELECTIVE" - only unenroll the object from the flows specified in `flowIds`
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIUnEnrollmentSetting::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIUnEnrollmentSetting::Type }

        # @!method initialize(flow_ids:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIUnEnrollmentSetting} for more details.
        #
        #   @param flow_ids [Array<String>] The IDs of the flows to unenroll an object in if it's enrolled in this flow.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIUnEnrollmentSetting::Type] The type of unenrollment to perform:

        # The type of unenrollment to perform:
        #
        # "ALL" - unenroll the object from all other flows
        #
        # "SELECTIVE" - only unenroll the object from the flows specified in `flowIds`
        #
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
