# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module Sequences
        # @see HubspotSDK::Resources::Automation::Sequences::Enrollments#enroll
        class EnrollmentEnrollParams < HubspotSDK::Models::Automation::PublicSequenceEnrollmentRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute user_id
          #
          #   @return [String]
          required :user_id, String

          # @!method initialize(user_id:, request_options: {})
          #   @param user_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
