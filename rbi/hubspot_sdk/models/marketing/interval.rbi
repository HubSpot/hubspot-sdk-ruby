# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class Interval < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::Interval,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :end_

        sig { returns(Time) }
        attr_accessor :start

        sig { params(end_: Time, start: Time).returns(T.attached_class) }
        def self.new(end_:, start:)
        end

        sig { override.returns({ end_: Time, start: Time }) }
        def to_hash
        end
      end
    end
  end
end
