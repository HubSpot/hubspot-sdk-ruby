# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class IdentificationTokenGenerationRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::IdentificationTokenGenerationRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The email of the visitor that you wish to identify
        sig { returns(String) }
        attr_accessor :email

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :hs_customer_agent_context

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
            hs_customer_agent_context: T::Hash[Symbol, String],
            first_name: String,
            last_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The email of the visitor that you wish to identify
          email:,
          hs_customer_agent_context:,
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
            {
              email: String,
              hs_customer_agent_context: T::Hash[Symbol, String],
              first_name: String,
              last_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
