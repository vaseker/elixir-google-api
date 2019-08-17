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

defmodule GoogleApi.CloudBilling.V1.Model.AggregationInfo do
  @moduledoc """
  Represents the aggregation level and interval for pricing of a single SKU.

  ## Attributes

  *   `aggregationCount` (*type:* `integer()`, *default:* `nil`) - The number of intervals to aggregate over.
      Example: If aggregation_level is "DAILY" and aggregation_count is 14,
      aggregation will be over 14 days.
  *   `aggregationInterval` (*type:* `String.t`, *default:* `nil`) - 
  *   `aggregationLevel` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationCount => integer(),
          :aggregationInterval => String.t(),
          :aggregationLevel => String.t()
        }

  field(:aggregationCount)
  field(:aggregationInterval)
  field(:aggregationLevel)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.AggregationInfo do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.AggregationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.AggregationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
