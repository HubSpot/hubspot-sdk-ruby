# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::LineItems#delete
        class LineItemDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute line_item_id
          #
          #   @return [String]
          required :line_item_id, String

          # @!method initialize(line_item_id:, request_options: {})
          #   @param line_item_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
