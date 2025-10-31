# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceEnrollmentLiteResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute enrolled_at
        #
        #   @return [Time]
        required :enrolled_at, Time, api_name: :enrolledAt

        # @!attribute to_email
        #
        #   @return [String]
        required :to_email, String, api_name: :toEmail

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, enrolled_at:, to_email:, updated_at:)
        #   @param id [String]
        #   @param enrolled_at [Time]
        #   @param to_email [String]
        #   @param updated_at [Time]
      end
    end
  end
end
