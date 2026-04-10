# typed: strong

module HubSpotSDK
  module Models
    module BusinessUnits
      class PublicBusinessUnitLogoMetadata < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The logo's alt text
        sig { returns(T.nilable(String)) }
        attr_reader :logo_alt_text

        sig { params(logo_alt_text: String).void }
        attr_writer :logo_alt_text

        # The logo's url
        sig { returns(T.nilable(String)) }
        attr_reader :logo_url

        sig { params(logo_url: String).void }
        attr_writer :logo_url

        # The logo's resized url
        sig { returns(T.nilable(String)) }
        attr_reader :resized_url

        sig { params(resized_url: String).void }
        attr_writer :resized_url

        sig do
          params(
            logo_alt_text: String,
            logo_url: String,
            resized_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The logo's alt text
          logo_alt_text: nil,
          # The logo's url
          logo_url: nil,
          # The logo's resized url
          resized_url: nil
        )
        end

        sig do
          override.returns(
            { logo_alt_text: String, logo_url: String, resized_url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
