# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module Sequences
        # @see HubspotSDK::Resources::Automation::Sequences::Enrollments#enroll
        class EnrollmentEnrollParams < HubspotSDK::Models::Automation::PublicSequenceEnrollmentRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
