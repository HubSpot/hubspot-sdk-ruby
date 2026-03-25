# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
        # @!attribute access_level
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ScopeMapping::AccessLevel]
        required :access_level,
                 enum: -> {
                   HubspotSDK::Cms::ScopeMapping::AccessLevel
                 },
                 api_name: :accessLevel

        # @!attribute request_action
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::ScopeMapping::RequestAction]
        required :request_action,
                 enum: -> { HubspotSDK::Cms::ScopeMapping::RequestAction },
                 api_name: :requestAction

        # @!attribute scope_name
        #
        #   @return [String]
        required :scope_name, String, api_name: :scopeName

        # @!method initialize(access_level:, request_action:, scope_name:)
        #   @param access_level [Symbol, HubspotSDK::Models::Cms::ScopeMapping::AccessLevel]
        #   @param request_action [Symbol, HubspotSDK::Models::Cms::ScopeMapping::RequestAction]
        #   @param scope_name [String]

        # @see HubspotSDK::Models::Cms::ScopeMapping#access_level
        module AccessLevel
          extend HubspotSDK::Internal::Type::Enum

          ALL = :ALL
          OWNED = :OWNED
          TEAM_OWNED = :TEAM_OWNED
          UNASSIGNED = :UNASSIGNED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Cms::ScopeMapping#request_action
        module RequestAction
          extend HubspotSDK::Internal::Type::Enum

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
