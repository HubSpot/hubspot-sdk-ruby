# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      class SignedAccessToken < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute expires_at
        #
        #   @return [Integer]
        required :expires_at, Integer, api_name: :expiresAt

        # @!attribute hub_id
        #
        #   @return [Integer]
        required :hub_id, Integer, api_name: :hubId

        # @!attribute hublet
        #
        #   @return [String]
        required :hublet, String

        # @!attribute installing_user_id
        #
        #   @return [Integer]
        required :installing_user_id, Integer, api_name: :installingUserId

        # @!attribute is_private_distribution
        #
        #   @return [Boolean]
        required :is_private_distribution,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isPrivateDistribution

        # @!attribute is_service_account
        #
        #   @return [Boolean]
        required :is_service_account, HubspotSDK::Internal::Type::Boolean, api_name: :isServiceAccount

        # @!attribute is_user_level
        #
        #   @return [Boolean]
        required :is_user_level, HubspotSDK::Internal::Type::Boolean, api_name: :isUserLevel

        # @!attribute new_signature
        #
        #   @return [String]
        required :new_signature, String, api_name: :newSignature

        # @!attribute scopes
        #
        #   @return [String]
        required :scopes, String

        # @!attribute scope_to_scope_group_pks
        #
        #   @return [String]
        required :scope_to_scope_group_pks, String, api_name: :scopeToScopeGroupPks

        # @!attribute signature
        #
        #   @return [String]
        required :signature, String

        # @!attribute trial_scopes
        #
        #   @return [String]
        required :trial_scopes, String, api_name: :trialScopes

        # @!attribute trial_scope_to_scope_group_pks
        #
        #   @return [String]
        required :trial_scope_to_scope_group_pks, String, api_name: :trialScopeToScopeGroupPks

        # @!attribute user_id
        #
        #   @return [Integer]
        required :user_id, Integer, api_name: :userId

        # @!method initialize(app_id:, expires_at:, hub_id:, hublet:, installing_user_id:, is_private_distribution:, is_service_account:, is_user_level:, new_signature:, scopes:, scope_to_scope_group_pks:, signature:, trial_scopes:, trial_scope_to_scope_group_pks:, user_id:)
        #   @param app_id [Integer]
        #   @param expires_at [Integer]
        #   @param hub_id [Integer]
        #   @param hublet [String]
        #   @param installing_user_id [Integer]
        #   @param is_private_distribution [Boolean]
        #   @param is_service_account [Boolean]
        #   @param is_user_level [Boolean]
        #   @param new_signature [String]
        #   @param scopes [String]
        #   @param scope_to_scope_group_pks [String]
        #   @param signature [String]
        #   @param trial_scopes [String]
        #   @param trial_scope_to_scope_group_pks [String]
        #   @param user_id [Integer]
      end
    end
  end
end
