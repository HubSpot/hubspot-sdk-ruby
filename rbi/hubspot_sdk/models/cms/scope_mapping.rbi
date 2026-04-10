# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ScopeMapping < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::ScopeMapping, HubSpotSDK::Internal::AnyHash)
          end

        sig do
          returns(HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol)
        end
        attr_accessor :access_level

        sig do
          returns(HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol)
        end
        attr_accessor :request_action

        sig { returns(String) }
        attr_accessor :scope_name

        sig do
          params(
            access_level: HubSpotSDK::Cms::ScopeMapping::AccessLevel::OrSymbol,
            request_action:
              HubSpotSDK::Cms::ScopeMapping::RequestAction::OrSymbol,
            scope_name: String
          ).returns(T.attached_class)
        end
        def self.new(access_level:, request_action:, scope_name:)
        end

        sig do
          override.returns(
            {
              access_level:
                HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol,
              request_action:
                HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol,
              scope_name: String
            }
          )
        end
        def to_hash
        end

        module AccessLevel
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ScopeMapping::AccessLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          OWNED =
            T.let(
              :OWNED,
              HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          TEAM_OWNED =
            T.let(
              :TEAM_OWNED,
              HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          UNASSIGNED =
            T.let(
              :UNASSIGNED,
              HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module RequestAction
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::ScopeMapping::RequestAction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMUNICATE =
            T.let(
              :COMMUNICATE,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          EDIT =
            T.let(
              :EDIT,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          EDIT_ASSOCIATION =
            T.let(
              :EDIT_ASSOCIATION,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
