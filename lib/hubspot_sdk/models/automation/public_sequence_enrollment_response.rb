# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      # @see HubSpotSDK::Resources::Automation::Sequences#get_enrollment_by_contact_id
      class PublicSequenceEnrollmentResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the sequence enrollment.
        #
        #   @return [String]
        required :id, String

        # @!attribute enrolled_at
        #   The date and time when the contact was enrolled in the sequence.
        #
        #   @return [Time]
        required :enrolled_at, Time, api_name: :enrolledAt

        # @!attribute enrolled_by
        #   The identifier of the user who enrolled the contact in the sequence.
        #
        #   @return [String]
        required :enrolled_by, String, api_name: :enrolledBy

        # @!attribute enrolled_by_email
        #   The email address of the user who enrolled the contact in the sequence.
        #
        #   @return [String]
        required :enrolled_by_email, String, api_name: :enrolledByEmail

        # @!attribute sequence_id
        #   The unique identifier of the sequence in which the contact is enrolled.
        #
        #   @return [String]
        required :sequence_id, String, api_name: :sequenceId

        # @!attribute sequence_name
        #   The name of the sequence in which the contact is enrolled.
        #
        #   @return [String]
        required :sequence_name, String, api_name: :sequenceName

        # @!attribute to_email
        #   The email address of the contact enrolled in the sequence.
        #
        #   @return [String]
        required :to_email, String, api_name: :toEmail

        # @!attribute updated_at
        #   The date and time when the sequence enrollment was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, enrolled_at:, enrolled_by:, enrolled_by_email:, sequence_id:, sequence_name:, to_email:, updated_at:)
        #   @param id [String] The unique identifier for the sequence enrollment.
        #
        #   @param enrolled_at [Time] The date and time when the contact was enrolled in the sequence.
        #
        #   @param enrolled_by [String] The identifier of the user who enrolled the contact in the sequence.
        #
        #   @param enrolled_by_email [String] The email address of the user who enrolled the contact in the sequence.
        #
        #   @param sequence_id [String] The unique identifier of the sequence in which the contact is enrolled.
        #
        #   @param sequence_name [String] The name of the sequence in which the contact is enrolled.
        #
        #   @param to_email [String] The email address of the contact enrolled in the sequence.
        #
        #   @param updated_at [Time] The date and time when the sequence enrollment was last updated.
      end
    end
  end
end
