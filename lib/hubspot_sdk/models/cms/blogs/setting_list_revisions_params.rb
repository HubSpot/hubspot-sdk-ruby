# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#list_revisions
        class SettingListRevisionsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute before
          #
          #   @return [String, nil]
          optional :before, String

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(after: nil, before: nil, limit: nil, request_options: {})
          #   @param after [String]
          #   @param before [String]
          #   @param limit [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
