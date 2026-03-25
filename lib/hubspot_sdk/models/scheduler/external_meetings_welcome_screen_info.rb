# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsWelcomeScreenInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute description
        #   A brief description displayed the welcome screen below the title.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute logo_url
        #   The URL of the logo image to be displayed on the welcome screen, only used if
        #   `useCompanyLogo` is false.
        #
        #   @return [String, nil]
        optional :logo_url, String, api_name: :logoUrl

        # @!attribute show_welcome_screen
        #   Deprecated property. Value can be ignored but will always be false.
        #
        #   @return [Boolean, nil]
        optional :show_welcome_screen, HubspotSDK::Internal::Type::Boolean, api_name: :showWelcomeScreen

        # @!attribute title
        #   The main heading displayed on the welcome screen.
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute use_company_logo
        #   Whether the company's logo should be displayed on the welcome screen.
        #
        #   @return [Boolean, nil]
        optional :use_company_logo, HubspotSDK::Internal::Type::Boolean, api_name: :useCompanyLogo

        # @!method initialize(description: nil, logo_url: nil, show_welcome_screen: nil, title: nil, use_company_logo: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalMeetingsWelcomeScreenInfo} for more
        #   details.
        #
        #   @param description [String] A brief description displayed the welcome screen below the title.
        #
        #   @param logo_url [String] The URL of the logo image to be displayed on the welcome screen, only used if `u
        #
        #   @param show_welcome_screen [Boolean] Deprecated property. Value can be ignored but will always be false.
        #
        #   @param title [String] The main heading displayed on the welcome screen.
        #
        #   @param use_company_logo [Boolean] Whether the company's logo should be displayed on the welcome screen.
      end
    end
  end
end
