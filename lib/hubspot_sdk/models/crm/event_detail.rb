# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class EventDetail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute details
        #   The details Markdown rendered as HTML.
        #
        #   @return [String]
        required :details, String

        # @!method initialize(details:)
        #   The details Markdown rendered as HTML.
        #
        #   @param details [String] The details Markdown rendered as HTML.
      end
    end
  end
end
