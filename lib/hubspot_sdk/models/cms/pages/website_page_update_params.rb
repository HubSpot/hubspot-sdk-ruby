# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Pages
        # @see HubspotSDK::Resources::Cms::Pages::WebsitePages#update
        class WebsitePageUpdateParams < HubspotSDK::Models::Cms::Page
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_id_
          #
          #   @return [String]
          required :object_id_, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(object_id_:, archived: nil, request_options: {})
          #   @param object_id_ [String]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
