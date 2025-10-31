# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class MetricsCounters < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::MetricsCounters,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :influenced_contacts

        sig { returns(Integer) }
        attr_accessor :new_contacts_first_touch

        sig { returns(Integer) }
        attr_accessor :new_contacts_last_touch

        sig { returns(Integer) }
        attr_accessor :sessions

        sig do
          params(
            influenced_contacts: Integer,
            new_contacts_first_touch: Integer,
            new_contacts_last_touch: Integer,
            sessions: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          influenced_contacts:,
          new_contacts_first_touch:,
          new_contacts_last_touch:,
          sessions:
        )
        end

        sig do
          override.returns(
            {
              influenced_contacts: Integer,
              new_contacts_first_touch: Integer,
              new_contacts_last_touch: Integer,
              sessions: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
