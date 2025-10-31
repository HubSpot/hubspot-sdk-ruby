# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class SubscriptionDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::SubscriptionDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the definition.
        sig { returns(String) }
        attr_accessor :id

        # Time at which the definition was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # A description of the subscription.
        sig { returns(String) }
        attr_accessor :description

        # Whether the definition is active or archived.
        sig { returns(T::Boolean) }
        attr_accessor :is_active

        # A subscription definition created by HubSpot.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # A default description that is used by some HubSpot tools and cannot be edited.
        sig { returns(T::Boolean) }
        attr_accessor :is_internal

        # The name of the subscription.
        sig { returns(String) }
        attr_accessor :name

        # Time at which the definition was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The ID of the business unit associated with the subscription definition.
        sig { returns(T.nilable(Integer)) }
        attr_reader :business_unit_id

        sig { params(business_unit_id: Integer).void }
        attr_writer :business_unit_id

        # The method or technology used to contact.
        sig { returns(T.nilable(String)) }
        attr_reader :communication_method

        sig { params(communication_method: String).void }
        attr_writer :communication_method

        # The purpose of this subscription or the department in your organization that
        # uses it.
        sig { returns(T.nilable(String)) }
        attr_reader :purpose

        sig { params(purpose: String).void }
        attr_writer :purpose

        sig do
          params(
            id: String,
            created_at: Time,
            description: String,
            is_active: T::Boolean,
            is_default: T::Boolean,
            is_internal: T::Boolean,
            name: String,
            updated_at: Time,
            business_unit_id: Integer,
            communication_method: String,
            purpose: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the definition.
          id:,
          # Time at which the definition was created.
          created_at:,
          # A description of the subscription.
          description:,
          # Whether the definition is active or archived.
          is_active:,
          # A subscription definition created by HubSpot.
          is_default:,
          # A default description that is used by some HubSpot tools and cannot be edited.
          is_internal:,
          # The name of the subscription.
          name:,
          # Time at which the definition was last updated.
          updated_at:,
          # The ID of the business unit associated with the subscription definition.
          business_unit_id: nil,
          # The method or technology used to contact.
          communication_method: nil,
          # The purpose of this subscription or the department in your organization that
          # uses it.
          purpose: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              description: String,
              is_active: T::Boolean,
              is_default: T::Boolean,
              is_internal: T::Boolean,
              name: String,
              updated_at: Time,
              business_unit_id: Integer,
              communication_method: String,
              purpose: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
