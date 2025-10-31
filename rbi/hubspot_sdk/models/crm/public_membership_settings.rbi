# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicMembershipSettings < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicMembershipSettings,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_unassigned

        sig { params(include_unassigned: T::Boolean).void }
        attr_writer :include_unassigned

        sig { returns(T.nilable(Integer)) }
        attr_reader :membership_team_id

        sig { params(membership_team_id: Integer).void }
        attr_writer :membership_team_id

        sig do
          params(
            include_unassigned: T::Boolean,
            membership_team_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(include_unassigned: nil, membership_team_id: nil)
        end

        sig do
          override.returns(
            { include_unassigned: T::Boolean, membership_team_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
