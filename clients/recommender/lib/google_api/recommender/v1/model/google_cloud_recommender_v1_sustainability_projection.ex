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

defmodule GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1SustainabilityProjection do
  @moduledoc """
  Contains metadata about how much sustainability a recommendation can save or incur.

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - Duration for which this sustainability applies.
  *   `kgCO2e` (*type:* `float()`, *default:* `nil`) - Carbon Footprint generated in kg of CO2 equivalent. Chose kg_c_o2e so that the name renders correctly in camelCase (kgCO2e).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t() | nil,
          :kgCO2e => float() | nil
        }

  field(:duration)
  field(:kgCO2e)
end

defimpl Poison.Decoder,
  for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1SustainabilityProjection do
  def decode(value, options) do
    GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1SustainabilityProjection.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Recommender.V1.Model.GoogleCloudRecommenderV1SustainabilityProjection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
