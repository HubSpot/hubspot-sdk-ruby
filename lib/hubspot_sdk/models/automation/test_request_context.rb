# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class TestRequestContext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute source
        #   Indicates the source of the test request, with the only accepted value being
        #   'TEST'.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::TestRequestContext::Source]
        required :source, enum: -> { HubspotSDK::Automation::TestRequestContext::Source }

        # @!method initialize(source:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::TestRequestContext} for more details.
        #
        #   @param source [Symbol, HubspotSDK::Models::Automation::TestRequestContext::Source] Indicates the source of the test request, with the only accepted value being 'TE

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        #
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
