# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ScopeMapping < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute access_level
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::ScopeMapping::AccessLevel]
        required :access_level,
                 enum: -> {
                   HubSpotSDK::Cms::ScopeMapping::AccessLevel
                 },
                 api_name: :accessLevel

        # @!attribute request_action
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::ScopeMapping::RequestAction]
        required :request_action,
                 enum: -> { HubSpotSDK::Cms::ScopeMapping::RequestAction },
                 api_name: :requestAction

        # @!attribute scope_name
        #
        #   @return [String]
        required :scope_name, String, api_name: :scopeName

        # @!method initialize(access_level:, request_action:, scope_name:)
        #   @param access_level [Symbol, HubSpotSDK::Models::Cms::ScopeMapping::AccessLevel]
        #   @param request_action [Symbol, HubSpotSDK::Models::Cms::ScopeMapping::RequestAction]
        #   @param scope_name [String]

        # @see HubSpotSDK::Models::Cms::ScopeMapping#access_level
        module AccessLevel
          extend HubSpotSDK::Internal::Type::Enum

          ALL = :ALL
          OWNED = :OWNED
          TEAM_OWNED = :TEAM_OWNED
          UNASSIGNED = :UNASSIGNED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Cms::ScopeMapping#request_action
        module RequestAction
          extend HubSpotSDK::Internal::Type::Enum

          COMMUNICATE = :COMMUNICATE
          DELETE = :DELETE
          EDIT = :EDIT
          EDIT_ASSOCIATION = :EDIT_ASSOCIATION
          MERGE = :MERGE
          VIEW = :VIEW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
