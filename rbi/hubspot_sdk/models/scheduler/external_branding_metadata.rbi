# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalBrandingMetadata < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalBrandingMetadata,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The alternative text for the current logo.
        sig { returns(String) }
        attr_accessor :logo_alt_text

        # Whether Hubspot Marketing ads are shown.
        sig { returns(T::Boolean) }
        attr_accessor :show_marketing_ad

        # Whether Hubspot Sales ads are shown.
        sig { returns(T::Boolean) }
        attr_accessor :show_sales_ad

        # The secondary accent color used in branding.
        sig { returns(T.nilable(String)) }
        attr_reader :accent2_color

        sig { params(accent2_color: String).void }
        attr_writer :accent2_color

        # The primary accent color used in branding.
        sig { returns(T.nilable(String)) }
        attr_reader :accent_color

        sig { params(accent_color: String).void }
        attr_writer :accent_color

        # The first line of the company's address.
        sig { returns(T.nilable(String)) }
        attr_reader :company_address_line1

        sig { params(company_address_line1: String).void }
        attr_writer :company_address_line1

        # The second line of the company's address.
        sig { returns(T.nilable(String)) }
        attr_reader :company_address_line2

        sig { params(company_address_line2: String).void }
        attr_writer :company_address_line2

        # The URL of the company's avatar image.
        sig { returns(T.nilable(String)) }
        attr_reader :company_avatar

        sig { params(company_avatar: String).void }
        attr_writer :company_avatar

        # The city where the company is located.
        sig { returns(T.nilable(String)) }
        attr_reader :company_city

        sig { params(company_city: String).void }
        attr_writer :company_city

        # The country where the company is located.
        sig { returns(T.nilable(String)) }
        attr_reader :company_country

        sig { params(company_country: String).void }
        attr_writer :company_country

        # The domain of the company's website.
        sig { returns(T.nilable(String)) }
        attr_reader :company_domain

        sig { params(company_domain: String).void }
        attr_writer :company_domain

        # The name of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        # The state where the company is located.
        sig { returns(T.nilable(String)) }
        attr_reader :company_state

        sig { params(company_state: String).void }
        attr_writer :company_state

        # The ZIP code of the company's location.
        sig { returns(T.nilable(String)) }
        attr_reader :company_zip

        sig { params(company_zip: String).void }
        attr_writer :company_zip

        # The height of the logo in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_reader :logo_height

        sig { params(logo_height: Integer).void }
        attr_writer :logo_height

        # The URL of a custom logo image.
        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        # The width of the logo in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_reader :logo_width

        sig { params(logo_width: Integer).void }
        attr_writer :logo_width

        # The primary color used in branding.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_color

        sig { params(primary_color: String).void }
        attr_writer :primary_color

        # The secondary color used in branding.
        sig { returns(T.nilable(String)) }
        attr_reader :secondary_color

        sig { params(secondary_color: String).void }
        attr_writer :secondary_color

        sig do
          params(
            logo_alt_text: String,
            show_marketing_ad: T::Boolean,
            show_sales_ad: T::Boolean,
            accent2_color: String,
            accent_color: String,
            company_address_line1: String,
            company_address_line2: String,
            company_avatar: String,
            company_city: String,
            company_country: String,
            company_domain: String,
            company_name: String,
            company_state: String,
            company_zip: String,
            logo_height: Integer,
            logo_url: String,
            logo_width: Integer,
            primary_color: String,
            secondary_color: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The alternative text for the current logo.
          logo_alt_text:,
          # Whether Hubspot Marketing ads are shown.
          show_marketing_ad:,
          # Whether Hubspot Sales ads are shown.
          show_sales_ad:,
          # The secondary accent color used in branding.
          accent2_color: nil,
          # The primary accent color used in branding.
          accent_color: nil,
          # The first line of the company's address.
          company_address_line1: nil,
          # The second line of the company's address.
          company_address_line2: nil,
          # The URL of the company's avatar image.
          company_avatar: nil,
          # The city where the company is located.
          company_city: nil,
          # The country where the company is located.
          company_country: nil,
          # The domain of the company's website.
          company_domain: nil,
          # The name of the company.
          company_name: nil,
          # The state where the company is located.
          company_state: nil,
          # The ZIP code of the company's location.
          company_zip: nil,
          # The height of the logo in pixels.
          logo_height: nil,
          # The URL of a custom logo image.
          logo_url: nil,
          # The width of the logo in pixels.
          logo_width: nil,
          # The primary color used in branding.
          primary_color: nil,
          # The secondary color used in branding.
          secondary_color: nil
        )
        end

        sig do
          override.returns(
            {
              logo_alt_text: String,
              show_marketing_ad: T::Boolean,
              show_sales_ad: T::Boolean,
              accent2_color: String,
              accent_color: String,
              company_address_line1: String,
              company_address_line2: String,
              company_avatar: String,
              company_city: String,
              company_country: String,
              company_domain: String,
              company_name: String,
              company_state: String,
              company_zip: String,
              logo_height: Integer,
              logo_url: String,
              logo_width: Integer,
              primary_color: String,
              secondary_color: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
