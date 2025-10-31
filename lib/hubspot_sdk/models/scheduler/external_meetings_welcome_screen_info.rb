# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsWelcomeScreenInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute logo_url
        #
        #   @return [String, nil]
        optional :logo_url, String, api_name: :logoUrl

        # @!attribute show_welcome_screen
        #
        #   @return [Boolean, nil]
        optional :show_welcome_screen, HubspotSDK::Internal::Type::Boolean, api_name: :showWelcomeScreen

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute use_company_logo
        #
        #   @return [Boolean, nil]
        optional :use_company_logo, HubspotSDK::Internal::Type::Boolean, api_name: :useCompanyLogo

        # @!method initialize(description: nil, logo_url: nil, show_welcome_screen: nil, title: nil, use_company_logo: nil)
        #   @param description [String]
        #   @param logo_url [String]
        #   @param show_welcome_screen [Boolean]
        #   @param title [String]
        #   @param use_company_logo [Boolean]
      end
    end
  end
end
