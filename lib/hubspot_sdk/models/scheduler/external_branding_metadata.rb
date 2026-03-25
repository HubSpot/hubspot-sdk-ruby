# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBrandingMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute logo_alt_text
        #   The alternative text for the current logo.
        #
        #   @return [String]
        required :logo_alt_text, String, api_name: :logoAltText

        # @!attribute show_marketing_ad
        #   Whether Hubspot Marketing ads are shown.
        #
        #   @return [Boolean]
        required :show_marketing_ad, HubspotSDK::Internal::Type::Boolean, api_name: :showMarketingAd

        # @!attribute show_sales_ad
        #   Whether Hubspot Sales ads are shown.
        #
        #   @return [Boolean]
        required :show_sales_ad, HubspotSDK::Internal::Type::Boolean, api_name: :showSalesAd

        # @!attribute accent2_color
        #   The secondary accent color used in branding.
        #
        #   @return [String, nil]
        optional :accent2_color, String, api_name: :accent2Color

        # @!attribute accent_color
        #   The primary accent color used in branding.
        #
        #   @return [String, nil]
        optional :accent_color, String, api_name: :accentColor

        # @!attribute company_address_line1
        #   The first line of the company's address.
        #
        #   @return [String, nil]
        optional :company_address_line1, String, api_name: :companyAddressLine1

        # @!attribute company_address_line2
        #   The second line of the company's address.
        #
        #   @return [String, nil]
        optional :company_address_line2, String, api_name: :companyAddressLine2

        # @!attribute company_avatar
        #   The URL of the company's avatar image.
        #
        #   @return [String, nil]
        optional :company_avatar, String, api_name: :companyAvatar

        # @!attribute company_city
        #   The city where the company is located.
        #
        #   @return [String, nil]
        optional :company_city, String, api_name: :companyCity

        # @!attribute company_country
        #   The country where the company is located.
        #
        #   @return [String, nil]
        optional :company_country, String, api_name: :companyCountry

        # @!attribute company_domain
        #   The domain of the company's website.
        #
        #   @return [String, nil]
        optional :company_domain, String, api_name: :companyDomain

        # @!attribute company_name
        #   The name of the company.
        #
        #   @return [String, nil]
        optional :company_name, String, api_name: :companyName

        # @!attribute company_state
        #   The state where the company is located.
        #
        #   @return [String, nil]
        optional :company_state, String, api_name: :companyState

        # @!attribute company_zip
        #   The ZIP code of the company's location.
        #
        #   @return [String, nil]
        optional :company_zip, String, api_name: :companyZip

        # @!attribute logo_height
        #   The height of the logo in pixels.
        #
        #   @return [Integer, nil]
        optional :logo_height, Integer, api_name: :logoHeight

        # @!attribute logo_url
        #   The URL of a custom logo image.
        #
        #   @return [String, nil]
        optional :logo_url, String, api_name: :logoUrl

        # @!attribute logo_width
        #   The width of the logo in pixels.
        #
        #   @return [Integer, nil]
        optional :logo_width, Integer, api_name: :logoWidth

        # @!attribute primary_color
        #   The primary color used in branding.
        #
        #   @return [String, nil]
        optional :primary_color, String, api_name: :primaryColor

        # @!attribute secondary_color
        #   The secondary color used in branding.
        #
        #   @return [String, nil]
        optional :secondary_color, String, api_name: :secondaryColor

        # @!method initialize(logo_alt_text:, show_marketing_ad:, show_sales_ad:, accent2_color: nil, accent_color: nil, company_address_line1: nil, company_address_line2: nil, company_avatar: nil, company_city: nil, company_country: nil, company_domain: nil, company_name: nil, company_state: nil, company_zip: nil, logo_height: nil, logo_url: nil, logo_width: nil, primary_color: nil, secondary_color: nil)
        #   @param logo_alt_text [String] The alternative text for the current logo.
        #
        #   @param show_marketing_ad [Boolean] Whether Hubspot Marketing ads are shown.
        #
        #   @param show_sales_ad [Boolean] Whether Hubspot Sales ads are shown.
        #
        #   @param accent2_color [String] The secondary accent color used in branding.
        #
        #   @param accent_color [String] The primary accent color used in branding.
        #
        #   @param company_address_line1 [String] The first line of the company's address.
        #
        #   @param company_address_line2 [String] The second line of the company's address.
        #
        #   @param company_avatar [String] The URL of the company's avatar image.
        #
        #   @param company_city [String] The city where the company is located.
        #
        #   @param company_country [String] The country where the company is located.
        #
        #   @param company_domain [String] The domain of the company's website.
        #
        #   @param company_name [String] The name of the company.
        #
        #   @param company_state [String] The state where the company is located.
        #
        #   @param company_zip [String] The ZIP code of the company's location.
        #
        #   @param logo_height [Integer] The height of the logo in pixels.
        #
        #   @param logo_url [String] The URL of a custom logo image.
        #
        #   @param logo_width [Integer] The width of the logo in pixels.
        #
        #   @param primary_color [String] The primary color used in branding.
        #
        #   @param secondary_color [String] The secondary color used in branding.
      end
    end
  end
end
