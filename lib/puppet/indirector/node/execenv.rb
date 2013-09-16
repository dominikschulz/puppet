require 'puppet/node'
require 'puppet/indirector/exec'
require 'puppet/indirector/node/exec'

class Puppet::Node::Execenv < Puppet::Node::Exec
  desc "Call an external program to get node information.  See
  the [External Nodes](http://docs.puppetlabs.com/guides/external_nodes.html) page for more information."
  include Puppet::Util

  def command_args(request,command)
    command = super or return nil
    command << request.environment.name
    return command
  end

end

