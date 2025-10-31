# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBrandingMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute logo_alt_text
        #
        #   @return [String]
        required :logo_alt_text, String, api_name: :logoAltText

        # @!attribute show_marketing_ad
        #
        #   @return [Boolean]
        required :show_marketing_ad, HubspotSDK::Internal::Type::Boolean, api_name: :showMarketingAd

        # @!attribute show_sales_ad
        #
        #   @return [Boolean]
        required :show_sales_ad, HubspotSDK::Internal::Type::Boolean, api_name: :showSalesAd

        # @!attribute accent2_color
        #
        #   @return [String, nil]
        optional :accent2_color, String, api_name: :accent2Color

        # @!attribute accent_color
        #
        #   @return [String, nil]
        optional :accent_color, String, api_name: :accentColor

        # @!attribute company_address_line1
        #
        #   @return [String, nil]
        optional :company_address_line1, String, api_name: :companyAddressLine1

        # @!attribute company_address_line2
        #
        #   @return [String, nil]
        optional :company_address_line2, String, api_name: :companyAddressLine2

        # @!attribute company_avatar
        #
        #   @return [String, nil]
        optional :company_avatar, String, api_name: :companyAvatar

        # @!attribute company_city
        #
        #   @return [String, nil]
        optional :company_city, String, api_name: :companyCity

        # @!attribute company_country
        #
        #   @return [String, nil]
        optional :company_country, String, api_name: :companyCountry

        # @!attribute company_domain
        #
        #   @return [String, nil]
        optional :company_domain, String, api_name: :companyDomain

        # @!attribute company_name
        #
        #   @return [String, nil]
        optional :company_name, String, api_name: :companyName

        # @!attribute company_state
        #
        #   @return [String, nil]
        optional :company_state, String, api_name: :companyState

        # @!attribute company_zip
        #
        #   @return [String, nil]
        optional :company_zip, String, api_name: :companyZip

        # @!attribute logo_height
        #
        #   @return [Integer, nil]
        optional :logo_height, Integer, api_name: :logoHeight

        # @!attribute logo_url
        #
        #   @return [String, nil]
        optional :logo_url, String, api_name: :logoUrl

        # @!attribute logo_width
        #
        #   @return [Integer, nil]
        optional :logo_width, Integer, api_name: :logoWidth

        # @!attribute primary_color
        #
        #   @return [String, nil]
        optional :primary_color, String, api_name: :primaryColor

        # @!attribute secondary_color
        #
        #   @return [String, nil]
        optional :secondary_color, String, api_name: :secondaryColor

        # @!method initialize(logo_alt_text:, show_marketing_ad:, show_sales_ad:, accent2_color: nil, accent_color: nil, company_address_line1: nil, company_address_line2: nil, company_avatar: nil, company_city: nil, company_country: nil, company_domain: nil, company_name: nil, company_state: nil, company_zip: nil, logo_height: nil, logo_url: nil, logo_width: nil, primary_color: nil, secondary_color: nil)
        #   @param logo_alt_text [String]
        #   @param show_marketing_ad [Boolean]
        #   @param show_sales_ad [Boolean]
        #   @param accent2_color [String]
        #   @param accent_color [String]
        #   @param company_address_line1 [String]
        #   @param company_address_line2 [String]
        #   @param company_avatar [String]
        #   @param company_city [String]
        #   @param company_country [String]
        #   @param company_domain [String]
        #   @param company_name [String]
        #   @param company_state [String]
        #   @param company_zip [String]
        #   @param logo_height [Integer]
        #   @param logo_url [String]
        #   @param logo_width [Integer]
        #   @param primary_color [String]
        #   @param secondary_color [String]
      end
    end
  end
end
