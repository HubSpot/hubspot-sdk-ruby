# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact_id
        #   The unique identifier of the contact to be enrolled in the sequence.
        #
        #   @return [String]
        required :contact_id, String, api_name: :contactId

        # @!attribute sender_email
        #   The email address of the sender enrolling the contact in the sequence.
        #
        #   @return [String]
        required :sender_email, String, api_name: :senderEmail

        # @!attribute sequence_id
        #   The unique identifier of the sequence in which the contact will be enrolled.
        #
        #   @return [String]
        required :sequence_id, String, api_name: :sequenceId

        # @!attribute sender_alias_address
        #   The alias email address used by the sender when enrolling the contact.
        #
        #   @return [String, nil]
        optional :sender_alias_address, String, api_name: :senderAliasAddress

        # @!method initialize(contact_id:, sender_email:, sequence_id:, sender_alias_address: nil)
        #   @param contact_id [String] The unique identifier of the contact to be enrolled in the sequence.
        #
        #   @param sender_email [String] The email address of the sender enrolling the contact in the sequence.
        #
        #   @param sequence_id [String] The unique identifier of the sequence in which the contact will be enrolled.
        #
        #   @param sender_alias_address [String] The alias email address used by the sender when enrolling the contact.
      end
    end
  end
end
