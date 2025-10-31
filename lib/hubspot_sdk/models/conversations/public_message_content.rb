# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicMessageContent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(rich_text: nil, text: nil)
        #   @param rich_text [String]
        #   @param text [String]
      end
    end
  end
end
