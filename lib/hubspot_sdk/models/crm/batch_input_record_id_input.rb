# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputRecordIDInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::RecordIDInput>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::RecordIDInput] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::RecordIDInput>]
      end
    end
  end
end
