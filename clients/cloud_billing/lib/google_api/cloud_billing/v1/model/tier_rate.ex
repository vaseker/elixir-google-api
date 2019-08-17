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

defmodule GoogleApi.CloudBilling.V1.Model.TierRate do
  @moduledoc """
  The price rate indicating starting usage and its corresponding price.

  ## Attributes

  *   `startUsageAmount` (*type:* `float()`, *default:* `nil`) - Usage is priced at this rate only after this amount.
      Example: start_usage_amount of 10 indicates that the usage will be priced
      at the unit_price after the first 10 usage_units.
  *   `unitPrice` (*type:* `GoogleApi.CloudBilling.V1.Model.Money.t`, *default:* `nil`) - The price per unit of usage.
      Example: unit_price of amount $10 indicates that each unit will cost $10.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :startUsageAmount => float(),
          :unitPrice => GoogleApi.CloudBilling.V1.Model.Money.t()
        }

  field(:startUsageAmount)
  field(:unitPrice, as: GoogleApi.CloudBilling.V1.Model.Money)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.TierRate do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.TierRate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.TierRate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
