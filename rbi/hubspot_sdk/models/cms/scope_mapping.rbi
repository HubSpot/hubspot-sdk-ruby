# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ScopeMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ScopeMapping, HubspotSDK::Internal::AnyHash)
          end

        sig do
          returns(HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol)
        end
        attr_accessor :access_level

        sig do
          returns(HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol)
        end
        attr_accessor :request_action

        sig { returns(String) }
        attr_accessor :scope_name

        sig do
          params(
            access_level: HubspotSDK::Cms::ScopeMapping::AccessLevel::OrSymbol,
            request_action:
              HubspotSDK::Cms::ScopeMapping::RequestAction::OrSymbol,
            scope_name: String
          ).returns(T.attached_class)
        end
        def self.new(access_level:, request_action:, scope_name:)
        end

        sig do
          override.returns(
            {
              access_level:
                HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol,
              request_action:
                HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol,
              scope_name: String
            }
          )
        end
        def to_hash
        end

        module AccessLevel
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::ScopeMapping::AccessLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          OWNED =
            T.let(
              :OWNED,
              HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          TEAM_OWNED =
            T.let(
              :TEAM_OWNED,
              HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )
          UNASSIGNED =
            T.let(
              :UNASSIGNED,
              HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::ScopeMapping::AccessLevel::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module RequestAction
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::ScopeMapping::RequestAction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMUNICATE =
            T.let(
              :COMMUNICATE,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          DELETE =
            T.let(
              :DELETE,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          EDIT =
            T.let(
              :EDIT,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          EDIT_ASSOCIATION =
            T.let(
              :EDIT_ASSOCIATION,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          MERGE =
            T.let(
              :MERGE,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )
          VIEW =
            T.let(
              :VIEW,
              HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::ScopeMapping::RequestAction::TaggedSymbol
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
