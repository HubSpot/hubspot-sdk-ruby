# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class TestRequestContext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute source
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::TestRequestContext::Source]
        required :source, enum: -> { HubspotSDK::Automation::TestRequestContext::Source }

        # @!method initialize(source:)
        #   @param source [Symbol, HubspotSDK::Models::Automation::TestRequestContext::Source]

        # @see HubspotSDK::Models::Automation::TestRequestContext#source
        module Source
          extend HubspotSDK::Internal::Type::Enum

          TEST = :TEST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
