# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class FilteringMetaData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_unconfirmed_users
        #
        #   @return [Boolean]
        required :include_unconfirmed_users,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeUnconfirmedUsers

        # @!attribute pipeline_ids
        #
        #   @return [Array<String>]
        required :pipeline_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :pipelineIds

        # @!method initialize(include_unconfirmed_users:, pipeline_ids:)
        #   @param include_unconfirmed_users [Boolean]
        #   @param pipeline_ids [Array<String>]
      end
    end
  end
end
