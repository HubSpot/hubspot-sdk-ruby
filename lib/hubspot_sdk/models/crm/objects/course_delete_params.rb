# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::Courses#delete
        class CourseDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute course_id
          #
          #   @return [String]
          required :course_id, String

          # @!method initialize(course_id:, request_options: {})
          #   @param course_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
