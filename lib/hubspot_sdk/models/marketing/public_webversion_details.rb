# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicWebversionDetails < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute domain
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute enabled
        #
        #   @return [Boolean, nil]
        optional :enabled, HubSpotSDK::Internal::Type::Boolean

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time, api_name: :expiresAt

        # @!attribute is_page_redirected
        #
        #   @return [Boolean, nil]
        optional :is_page_redirected, HubSpotSDK::Internal::Type::Boolean, api_name: :isPageRedirected

        # @!attribute meta_description
        #
        #   @return [String, nil]
        optional :meta_description, String, api_name: :metaDescription

        # @!attribute page_expiry_enabled
        #
        #   @return [Boolean, nil]
        optional :page_expiry_enabled, HubSpotSDK::Internal::Type::Boolean, api_name: :pageExpiryEnabled

        # @!attribute redirect_to_page_id
        #
        #   @return [String, nil]
        optional :redirect_to_page_id, String, api_name: :redirectToPageId

        # @!attribute redirect_to_url
        #
        #   @return [String, nil]
        optional :redirect_to_url, String, api_name: :redirectToUrl

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(domain: nil, enabled: nil, expires_at: nil, is_page_redirected: nil, meta_description: nil, page_expiry_enabled: nil, redirect_to_page_id: nil, redirect_to_url: nil, slug: nil, title: nil, url: nil)
        #   @param domain [String]
        #   @param enabled [Boolean]
        #   @param expires_at [Time]
        #   @param is_page_redirected [Boolean]
        #   @param meta_description [String]
        #   @param page_expiry_enabled [Boolean]
        #   @param redirect_to_page_id [String]
        #   @param redirect_to_url [String]
        #   @param slug [String]
        #   @param title [String]
        #   @param url [String]
      end
    end
  end
end
