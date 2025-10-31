# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#reset_draft
        class TableResetDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute include_foreign_ids
          #   Set this to `true` to populate foreign ID values in the response.
          #
          #   @return [Boolean, nil]
          optional :include_foreign_ids, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(include_foreign_ids: nil, request_options: {})
          #   @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the response.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
