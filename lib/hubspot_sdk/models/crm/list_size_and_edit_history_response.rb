# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_size_and_edits_history_between
      class ListSizeAndEditHistoryResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute edit_history
        #
        #   @return [Array<Time>]
        required :edit_history, HubSpotSDK::Internal::Type::ArrayOf[Time], api_name: :editHistory

        # @!attribute size_history
        #
        #   @return [Array<HubSpotSDK::Models::Crm::ListSizeDataPoint>]
        required :size_history,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ListSizeDataPoint] },
                 api_name: :sizeHistory

        # @!method initialize(edit_history:, size_history:)
        #   @param edit_history [Array<Time>]
        #   @param size_history [Array<HubSpotSDK::Models::Crm::ListSizeDataPoint>]
      end
    end
  end
end
