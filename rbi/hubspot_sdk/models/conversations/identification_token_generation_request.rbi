# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class IdentificationTokenGenerationRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::IdentificationTokenGenerationRequest,
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

        # Information used to generate a token
        sig do
          params(email: String, first_name: String, last_name: String).returns(
            T.attached_class
          )
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
          last_name: nil
        )
        end

        sig do
          override.returns(
            { email: String, first_name: String, last_name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
