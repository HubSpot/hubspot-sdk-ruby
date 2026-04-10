# typed: strong

module HubSpotSDK
  module Models
    module Meta
      class IPRange < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Meta::IPRange, HubSpotSDK::Internal::AnyHash)
          end

        # The CIDR notation representing the IP range.
        sig { returns(String) }
        attr_accessor :cidr

        # A description of the IP range.
        sig { returns(String) }
        attr_accessor :description

        # The direction of the IP traffic, which can be INGRESS or EGRESS.
        sig { returns(HubSpotSDK::Meta::IPRange::Direction::TaggedSymbol) }
        attr_accessor :direction

        # The service associated with the IP range, such as EMAIL, API, DNS, or
        # WEB_SCRAPING.
        sig { returns(HubSpotSDK::Meta::IPRange::Service::TaggedSymbol) }
        attr_accessor :service

        sig do
          params(
            cidr: String,
            description: String,
            direction: HubSpotSDK::Meta::IPRange::Direction::OrSymbol,
            service: HubSpotSDK::Meta::IPRange::Service::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The CIDR notation representing the IP range.
          cidr:,
          # A description of the IP range.
          description:,
          # The direction of the IP traffic, which can be INGRESS or EGRESS.
          direction:,
          # The service associated with the IP range, such as EMAIL, API, DNS, or
          # WEB_SCRAPING.
          service:
        )
        end

        sig do
          override.returns(
            {
              cidr: String,
              description: String,
              direction: HubSpotSDK::Meta::IPRange::Direction::TaggedSymbol,
              service: HubSpotSDK::Meta::IPRange::Service::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The direction of the IP traffic, which can be INGRESS or EGRESS.
        module Direction
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Meta::IPRange::Direction) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EGRESS =
            T.let(:EGRESS, HubSpotSDK::Meta::IPRange::Direction::TaggedSymbol)
          INGRESS =
            T.let(:INGRESS, HubSpotSDK::Meta::IPRange::Direction::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubSpotSDK::Meta::IPRange::Direction::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The service associated with the IP range, such as EMAIL, API, DNS, or
        # WEB_SCRAPING.
        module Service
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Meta::IPRange::Service) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API = T.let(:API, HubSpotSDK::Meta::IPRange::Service::TaggedSymbol)
          DNS = T.let(:DNS, HubSpotSDK::Meta::IPRange::Service::TaggedSymbol)
          EMAIL =
            T.let(:EMAIL, HubSpotSDK::Meta::IPRange::Service::TaggedSymbol)
          TEST_SERVICE =
            T.let(
              :TEST_SERVICE,
              HubSpotSDK::Meta::IPRange::Service::TaggedSymbol
            )
          WEB_SCRAPING =
            T.let(
              :WEB_SCRAPING,
              HubSpotSDK::Meta::IPRange::Service::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Meta::IPRange::Service::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
