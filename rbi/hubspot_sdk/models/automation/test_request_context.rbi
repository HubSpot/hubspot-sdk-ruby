# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class TestRequestContext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::TestRequestContext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        sig do
          returns(HubSpotSDK::Automation::TestRequestContext::Source::OrSymbol)
        end
        attr_accessor :source

        sig do
          params(
            source: HubSpotSDK::Automation::TestRequestContext::Source::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the source of the test request, with the only accepted value being
          # 'TEST'.
          source:
        )
        end

        sig do
          override.returns(
            {
              source:
                HubSpotSDK::Automation::TestRequestContext::Source::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::TestRequestContext::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEST =
            T.let(
              :TEST,
              HubSpotSDK::Automation::TestRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::TestRequestContext::Source::TaggedSymbol
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
