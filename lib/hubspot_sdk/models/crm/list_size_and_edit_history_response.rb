# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get_size_and_edits_history_between
      class ListSizeAndEditHistoryResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute edit_history
        #
        #   @return [Array<Time>]
        required :edit_history, HubspotSDK::Internal::Type::ArrayOf[Time], api_name: :editHistory

        # @!attribute size_history
        #
        #   @return [Array<HubspotSDK::Models::Crm::ListSizeDataPoint>]
        required :size_history,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ListSizeDataPoint] },
                 api_name: :sizeHistory

        # @!method initialize(edit_history:, size_history:)
        #   @param edit_history [Array<Time>]
        #   @param size_history [Array<HubspotSDK::Models::Crm::ListSizeDataPoint>]
      end
    end
  end
end
