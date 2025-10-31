# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute enrolled_at
        #
        #   @return [Time]
        required :enrolled_at, Time, api_name: :enrolledAt

        # @!attribute enrolled_by
        #
        #   @return [String]
        required :enrolled_by, String, api_name: :enrolledBy

        # @!attribute enrolled_by_email
        #
        #   @return [String]
        required :enrolled_by_email, String, api_name: :enrolledByEmail

        # @!attribute sequence_id
        #
        #   @return [String]
        required :sequence_id, String, api_name: :sequenceId

        # @!attribute sequence_name
        #
        #   @return [String]
        required :sequence_name, String, api_name: :sequenceName

        # @!attribute to_email
        #
        #   @return [String]
        required :to_email, String, api_name: :toEmail

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, enrolled_at:, enrolled_by:, enrolled_by_email:, sequence_id:, sequence_name:, to_email:, updated_at:)
        #   @param id [String]
        #   @param enrolled_at [Time]
        #   @param enrolled_by [String]
        #   @param enrolled_by_email [String]
        #   @param sequence_id [String]
        #   @param sequence_name [String]
        #   @param to_email [String]
        #   @param updated_at [Time]
      end
    end
  end
end
