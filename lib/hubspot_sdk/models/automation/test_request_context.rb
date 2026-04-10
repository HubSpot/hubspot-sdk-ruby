# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class TestRequestContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute source
        #   Indicates the source of the test request, with the only accepted value being
        #   'TEST'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::TestRequestContext::Source]
        required :source, enum: -> { HubSpotSDK::Automation::TestRequestContext::Source }

        # @!method initialize(source:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::TestRequestContext} for more details.
        #
        #   @param source [Symbol, HubSpotSDK::Models::Automation::TestRequestContext::Source] Indicates the source of the test request, with the only accepted value being 'TE

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        #
        # @see HubSpotSDK::Models::Automation::TestRequestContext#source
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          TEST = :TEST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
