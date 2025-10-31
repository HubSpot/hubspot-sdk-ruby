# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class VisitorIdentificationGenerateTokenParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::VisitorIdentificationGenerateTokenParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The email of the visitor that you wish to identify
        sig { returns(String) }
        attr_accessor :email

        # The first name of the visitor that you wish to identify. This value will only be
        # set in HubSpot for new contacts and existing contacts where first name is
        # unknown. Optional.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # The last name of the visitor that you wish to identify. This value will only be
        # set in HubSpot for new contacts and existing contacts where last name is
        # unknown. Optional.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig do
          params(
            email: String,
            first_name: String,
            last_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The email of the visitor that you wish to identify
          email:,
          # The first name of the visitor that you wish to identify. This value will only be
          # set in HubSpot for new contacts and existing contacts where first name is
          # unknown. Optional.
          first_name: nil,
          # The last name of the visitor that you wish to identify. This value will only be
          # set in HubSpot for new contacts and existing contacts where last name is
          # unknown. Optional.
          last_name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email: String,
              first_name: String,
              last_name: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
