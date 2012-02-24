# Copyright (c) 2009-2011 VMware, Inc.
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', '..', 'base', 'lib')

require 'base/provisioner'
require 'maxdb_service/common'

class VCAP::Services::MaxDB::Provisioner < VCAP::Services::Base::Provisioner

  include VCAP::Services::MaxDB::Common

  def node_score(node)
    node['available_storage'] if node
  end

end
