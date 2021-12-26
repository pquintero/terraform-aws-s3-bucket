require 'awspec'

service_name = `cd test/awspec/ && terraform output name`.strip.delete('"')

describe s3_bucket(service_name.to_s) do
    it { should exist }
    it { should have_server_side_encryption(algorithm: "aws:kms") }
end