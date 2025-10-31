# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBrandingMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalBrandingMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :logo_alt_text

        sig { returns(T::Boolean) }
        attr_accessor :show_marketing_ad

        sig { returns(T::Boolean) }
        attr_accessor :show_sales_ad

        sig { returns(T.nilable(String)) }
        attr_reader :accent2_color

        sig { params(accent2_color: String).void }
        attr_writer :accent2_color

        sig { returns(T.nilable(String)) }
        attr_reader :accent_color

        sig { params(accent_color: String).void }
        attr_writer :accent_color

        sig { returns(T.nilable(String)) }
        attr_reader :company_address_line1

        sig { params(company_address_line1: String).void }
        attr_writer :company_address_line1

        sig { returns(T.nilable(String)) }
        attr_reader :company_address_line2

        sig { params(company_address_line2: String).void }
        attr_writer :company_address_line2

        sig { returns(T.nilable(String)) }
        attr_reader :company_avatar

        sig { params(company_avatar: String).void }
        attr_writer :company_avatar

        sig { returns(T.nilable(String)) }
        attr_reader :company_city

        sig { params(company_city: String).void }
        attr_writer :company_city

        sig { returns(T.nilable(String)) }
        attr_reader :company_country

        sig { params(company_country: String).void }
        attr_writer :company_country

        sig { returns(T.nilable(String)) }
        attr_reader :company_domain

        sig { params(company_domain: String).void }
        attr_writer :company_domain

        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        sig { returns(T.nilable(String)) }
        attr_reader :company_state

        sig { params(company_state: String).void }
        attr_writer :company_state

        sig { returns(T.nilable(String)) }
        attr_reader :company_zip

        sig { params(company_zip: String).void }
        attr_writer :company_zip

        sig { returns(T.nilable(Integer)) }
        attr_reader :logo_height

        sig { params(logo_height: Integer).void }
        attr_writer :logo_height

        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        sig { returns(T.nilable(Integer)) }
        attr_reader :logo_width

        sig { params(logo_width: Integer).void }
        attr_writer :logo_width

        sig { returns(T.nilable(String)) }
        attr_reader :primary_color

        sig { params(primary_color: String).void }
        attr_writer :primary_color

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
          logo_alt_text:,
          show_marketing_ad:,
          show_sales_ad:,
          accent2_color: nil,
          accent_color: nil,
          company_address_line1: nil,
          company_address_line2: nil,
          company_avatar: nil,
          company_city: nil,
          company_country: nil,
          company_domain: nil,
          company_name: nil,
          company_state: nil,
          company_zip: nil,
          logo_height: nil,
          logo_url: nil,
          logo_width: nil,
          primary_color: nil,
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
