# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailFromDetails < HubspotSDK::Internal::Type::BaseModel
        # @!attribute custom_reply_to
        #   The reply to recipients will see.
        #
        #   @return [String, nil]
        optional :custom_reply_to, String, api_name: :customReplyTo

        # @!attribute from_name
        #   The name recipients will see.
        #
        #   @return [String, nil]
        optional :from_name, String, api_name: :fromName

        # @!attribute reply_to
        #   The from address and reply to email address (if no customReplyTo defined)
        #   recipients will see.
        #
        #   @return [String, nil]
        optional :reply_to, String, api_name: :replyTo

        # @!method initialize(custom_reply_to: nil, from_name: nil, reply_to: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::PublicEmailFromDetails} for more details.
        #
        #   @param custom_reply_to [String] The reply to recipients will see.
        #
        #   @param from_name [String] The name recipients will see.
        #
        #   @param reply_to [String] The from address and reply to email address (if no customReplyTo defined) recipi
      end
    end
  end
end
