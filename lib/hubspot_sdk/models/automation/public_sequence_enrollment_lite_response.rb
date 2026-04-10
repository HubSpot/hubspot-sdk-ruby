# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      # @see HubSpotSDK::Resources::Automation::Sequences#create_enrollment
      class PublicSequenceEnrollmentLiteResponse < HubSpotSDK::Internal::Type::BaseModel
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

        # @!method initialize(id:, enrolled_at:, to_email:, updated_at:)
        #   @param id [String] The unique identifier for the sequence enrollment.
        #
        #   @param enrolled_at [Time] The date and time when the contact was enrolled in the sequence.
        #
        #   @param to_email [String] The email address of the contact enrolled in the sequence.
        #
        #   @param updated_at [Time] The date and time when the sequence enrollment was last updated.
      end
    end
  end
end
