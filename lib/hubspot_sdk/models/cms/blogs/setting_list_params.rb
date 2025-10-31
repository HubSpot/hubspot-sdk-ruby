# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#list
        class SettingListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute created_after
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute sort
          #
          #   @return [Array<String>, nil]
          optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   @param after [String]
          #   @param archived [Boolean]
          #   @param created_after [Time]
          #   @param created_at [Time]
          #   @param created_before [Time]
          #   @param limit [Integer]
          #   @param sort [Array<String>]
          #   @param updated_after [Time]
          #   @param updated_at [Time]
          #   @param updated_before [Time]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
