# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AttentionSpanCalculatedValues < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AttentionSpanCalculatedValues,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Float) }
        attr_accessor :total_percent_played

        sig { returns(Integer) }
        attr_accessor :total_seconds_played

        sig do
          params(
            total_percent_played: Float,
            total_seconds_played: Integer
          ).returns(T.attached_class)
        end
        def self.new(total_percent_played:, total_seconds_played:)
        end

        sig do
          override.returns(
            { total_percent_played: Float, total_seconds_played: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
