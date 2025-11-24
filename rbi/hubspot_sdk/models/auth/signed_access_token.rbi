# typed: strong

module HubspotSDK
  module Models
    module Auth
      class SignedAccessToken < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::SignedAccessToken,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :app_id

        sig { returns(Integer) }
        attr_accessor :expires_at

        sig { returns(Integer) }
        attr_accessor :hub_id

        sig { returns(String) }
        attr_accessor :hublet

        sig { returns(Integer) }
        attr_accessor :installing_user_id

        sig { returns(T::Boolean) }
        attr_accessor :is_private_distribution

        sig { returns(T::Boolean) }
        attr_accessor :is_service_account

        sig { returns(T::Boolean) }
        attr_accessor :is_user_level

        sig { returns(String) }
        attr_accessor :new_signature

        sig { returns(String) }
        attr_accessor :scopes

        sig { returns(String) }
        attr_accessor :scope_to_scope_group_pks

        sig { returns(String) }
        attr_accessor :signature

        sig { returns(String) }
        attr_accessor :trial_scopes

        sig { returns(String) }
        attr_accessor :trial_scope_to_scope_group_pks

        sig { returns(Integer) }
        attr_accessor :user_id

        sig do
          params(
            app_id: Integer,
            expires_at: Integer,
            hub_id: Integer,
            hublet: String,
            installing_user_id: Integer,
            is_private_distribution: T::Boolean,
            is_service_account: T::Boolean,
            is_user_level: T::Boolean,
            new_signature: String,
            scopes: String,
            scope_to_scope_group_pks: String,
            signature: String,
            trial_scopes: String,
            trial_scope_to_scope_group_pks: String,
            user_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          app_id:,
          expires_at:,
          hub_id:,
          hublet:,
          installing_user_id:,
          is_private_distribution:,
          is_service_account:,
          is_user_level:,
          new_signature:,
          scopes:,
          scope_to_scope_group_pks:,
          signature:,
          trial_scopes:,
          trial_scope_to_scope_group_pks:,
          user_id:
        )
        end

        sig do
          override.returns(
            {
              app_id: Integer,
              expires_at: Integer,
              hub_id: Integer,
              hublet: String,
              installing_user_id: Integer,
              is_private_distribution: T::Boolean,
              is_service_account: T::Boolean,
              is_user_level: T::Boolean,
              new_signature: String,
              scopes: String,
              scope_to_scope_group_pks: String,
              signature: String,
              trial_scopes: String,
              trial_scope_to_scope_group_pks: String,
              user_id: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
