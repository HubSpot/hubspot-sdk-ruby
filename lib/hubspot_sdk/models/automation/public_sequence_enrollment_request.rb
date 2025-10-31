# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_id
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute sender_email
        #
        #   @return [String]
        required :sender_email, String, api_name: :senderEmail

        # @!attribute sequence_id
        #
        #   @return [String]
        required :sequence_id, String, api_name: :sequenceId

        # @!attribute sender_alias_address
        #
        #   @return [String, nil]
        optional :sender_alias_address, String, api_name: :senderAliasAddress

        # @!method initialize(contact_id:, sender_email:, sequence_id:, sender_alias_address: nil)
        #   @param contact_id [String]
        #   @param sender_email [String]
        #   @param sequence_id [String]
        #   @param sender_alias_address [String]
      end
    end
  end
end
