# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.RealTimeBidding.V1.Model.Endpoint do
  @moduledoc """
  Bidder endpoint that receives bid requests.

  ## Attributes

  *   `bidProtocol` (*type:* `String.t`, *default:* `nil`) - The protocol that the bidder endpoint is using.
  *   `maximumQps` (*type:* `String.t`, *default:* `nil`) - The maximum number of queries per second allowed to be sent to this server.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the endpoint resource that must follow the pattern `bidders/{bidderAccountId}/endpoints/{endpointId}`, where {bidderAccountId} is the account ID of the bidder who operates this endpoint, and {endpointId} is a unique ID assigned by the server.
  *   `tradingLocation` (*type:* `String.t`, *default:* `nil`) - The trading location that bid requests should be sent from. See https://developers.google.com/authorized-buyers/rtb/peer-guide#trading-locations for further information.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Output only. The URL that bid requests should be sent to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bidProtocol => String.t() | nil,
          :maximumQps => String.t() | nil,
          :name => String.t() | nil,
          :tradingLocation => String.t() | nil,
          :url => String.t() | nil
        }

  field(:bidProtocol)
  field(:maximumQps)
  field(:name)
  field(:tradingLocation)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.Endpoint do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end