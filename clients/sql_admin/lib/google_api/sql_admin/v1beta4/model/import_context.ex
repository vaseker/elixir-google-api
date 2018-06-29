# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  @moduledoc """
  Database instance import context.

  ## Attributes

  - csvImportOptions (ImportContextCsvImportOptions):  Defaults to: `null`.
  - database (String.t): The database (for example, guestbook) to which the import is made. If fileType is SQL and no database is specified, it is assumed that the database is specified in the file to be imported. If fileType is CSV, it must be specified. Defaults to: `null`.
  - fileType (String.t): The file type for the specified uri. SQL: The file contains SQL statements. CSV: The file contains CSV data. Defaults to: `null`.
  - importUser (String.t): The PostgreSQL user for this import operation. Defaults to cloudsqlsuperuser. Used only for PostgreSQL instances. Defaults to: `null`.
  - kind (String.t): This is always sql#importContext. Defaults to: `null`.
  - uri (String.t): A path to the file in Google Cloud Storage from which the import is made. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are supported when fileType is SQL. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvImportOptions => GoogleApi.SQLAdmin.V1beta4.Model.ImportContextCsvImportOptions.t(),
          :database => any(),
          :fileType => any(),
          :importUser => any(),
          :kind => any(),
          :uri => any()
        }

  field(:csvImportOptions, as: GoogleApi.SQLAdmin.V1beta4.Model.ImportContextCsvImportOptions)
  field(:database)
  field(:fileType)
  field(:importUser)
  field(:kind)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.ImportContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
