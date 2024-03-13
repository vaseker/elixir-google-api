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

defmodule GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterProtoCommonProduct do
  @moduledoc """
  Product specification for Condor resources.

  ## Attributes

  *   `engine` (*type:* `String.t`, *default:* `nil`) - The specific engine that the underlying database is running.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of specific database product. It could be CloudSQL, AlloyDB etc..
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version of the underlying database engine. Example values: For MySQL, it could be "8.0", "5.7" etc.. For Postgres, it could be "14", "15" etc..
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :engine => String.t() | nil,
          :type => String.t() | nil,
          :version => String.t() | nil
        }

  field(:engine)
  field(:type)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterProtoCommonProduct do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterProtoCommonProduct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterProtoCommonProduct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
