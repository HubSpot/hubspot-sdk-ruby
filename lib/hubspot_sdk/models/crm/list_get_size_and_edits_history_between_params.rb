# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_size_and_edits_history_between
      class ListGetSizeAndEditsHistoryBetweenParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute end_date
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute start_date
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!method initialize(list_id:, end_date: nil, start_date: nil, request_options: {})
        #   @param list_id [String]
        #   @param end_date [Time]
        #   @param start_date [Time]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
