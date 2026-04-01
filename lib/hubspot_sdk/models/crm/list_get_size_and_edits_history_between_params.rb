# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get_size_and_edits_history_between
      class ListGetSizeAndEditsHistoryBetweenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(list_id:, end_date: nil, start_date: nil, request_options: {})
        #   @param list_id [String]
        #   @param end_date [String]
        #   @param start_date [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
