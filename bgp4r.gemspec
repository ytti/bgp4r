# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bgp4r}
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jean-Michel Esnault"]
  s.date = %q{2010-10-12}
  s.description = %q{BGP4R is a BGP-4 ruby library to create,  send, and receive  BGP messages in an  object oriented manner}
  s.email = %q{jesnault@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
     "README.rdoc"
  ]
  s.files = [
    "COPYING",
     "LICENSE.txt",
     "README.rdoc",
     "bgp/common.rb",
     "bgp/iana.rb",
     "bgp/io.rb",
     "bgp/messages/capability.rb",
     "bgp/messages/keepalive.rb",
     "bgp/messages/markers.rb",
     "bgp/messages/message.rb",
     "bgp/messages/messages.rb",
     "bgp/messages/notification.rb",
     "bgp/messages/open.rb",
     "bgp/messages/route_refresh.rb",
     "bgp/messages/update.rb",
     "bgp/neighbor.rb",
     "bgp/nlris/inet.rb",
     "bgp/nlris/label.rb",
     "bgp/nlris/labeled.rb",
     "bgp/nlris/nlri.rb",
     "bgp/nlris/nlris.rb",
     "bgp/nlris/prefix.rb",
     "bgp/nlris/rd.rb",
     "bgp/nlris/vpn.rb",
     "bgp/optional_parameters/as4.rb",
     "bgp/optional_parameters/capabilities.rb",
     "bgp/optional_parameters/capability.rb",
     "bgp/optional_parameters/dynamic.rb",
     "bgp/optional_parameters/graceful_restart.rb",
     "bgp/optional_parameters/mbgp.rb",
     "bgp/optional_parameters/optional_parameter.rb",
     "bgp/optional_parameters/orf.rb",
     "bgp/optional_parameters/route_refresh.rb",
     "bgp/orfs/orf.rb",
     "bgp/orfs/prefix_orf.rb",
     "bgp/path_attributes/aggregator.rb",
     "bgp/path_attributes/as_path.rb",
     "bgp/path_attributes/atomic_aggregate.rb",
     "bgp/path_attributes/attribute.rb",
     "bgp/path_attributes/attributes.rb",
     "bgp/path_attributes/cluster_list.rb",
     "bgp/path_attributes/communities.rb",
     "bgp/path_attributes/extended_communities.rb",
     "bgp/path_attributes/extended_community.rb",
     "bgp/path_attributes/local_pref.rb",
     "bgp/path_attributes/mp_reach.rb",
     "bgp/path_attributes/mp_unreach.rb",
     "bgp/path_attributes/multi_exit_disc.rb",
     "bgp/path_attributes/next_hop.rb",
     "bgp/path_attributes/origin.rb",
     "bgp/path_attributes/originator_id.rb",
     "bgp/path_attributes/path_attribute.rb",
     "bgp4r.gemspec",
     "bgp4r.rb",
     "examples/routegen",
     "examples/routegen.yml",
     "examples/simple.rb",
     "examples/unit-testing/malformed_update.rb",
     "examples/unit-testing/prepend_aspath.rb",
     "examples/unit-testing/unknown_transitive_attr.rb",
     "test/common_test.rb",
     "test/messages/capability_test.rb",
     "test/messages/keepalive_test.rb",
     "test/messages/markers_test.rb",
     "test/messages/message_test.rb",
     "test/messages/notification_test.rb",
     "test/messages/open_test.rb",
     "test/messages/route_refresh_test.rb",
     "test/messages/update_test.rb",
     "test/neighbor_test.rb",
     "test/nlris/inet_test.rb",
     "test/nlris/labeled_test.rb",
     "test/nlris/nlri_test.rb",
     "test/nlris/rd_test.rb",
     "test/optional_parameters/as4_test.rb",
     "test/optional_parameters/capability_test.rb",
     "test/optional_parameters/dynamic_test.rb",
     "test/optional_parameters/graceful_restart_test.rb",
     "test/optional_parameters/mbgp_test.rb",
     "test/optional_parameters/optional_parameter_test.rb",
     "test/optional_parameters/orf_test.rb",
     "test/optional_parameters/route_refresh_test.rb",
     "test/orfs/prefix_orf_test.rb",
     "test/path_attributes/aggregator_test.rb",
     "test/path_attributes/as_path_test.rb",
     "test/path_attributes/atomic_aggregate_test.rb",
     "test/path_attributes/attribute_test.rb",
     "test/path_attributes/cluster_list_test.rb",
     "test/path_attributes/communities_test.rb",
     "test/path_attributes/extended_communities_test.rb",
     "test/path_attributes/extended_community_test.rb",
     "test/path_attributes/local_pref_test.rb",
     "test/path_attributes/mp_reach_test.rb",
     "test/path_attributes/mp_unreach_test.rb",
     "test/path_attributes/multi_exit_disc_test.rb",
     "test/path_attributes/next_hop_test.rb",
     "test/path_attributes/origin_test.rb",
     "test/path_attributes/originator_id_test.rb",
     "test/path_attributes/path_attribute_test.rb"
  ]
  s.homepage = %q{http://github.com/jesnault/bgp4r/tree/master}
  s.rdoc_options = ["--quiet", "--title", "A BGP-4 Ruby Library", "--line-numbers"]
  s.require_paths = ["."]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubyforge_project = %q{bgp4r}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A BGP-4 Ruby Library}
  s.test_files = [
    "test/common_test.rb",
     "test/messages",
     "test/messages/capability_test.rb",
     "test/messages/keepalive_test.rb",
     "test/messages/markers_test.rb",
     "test/messages/message_test.rb",
     "test/messages/notification_test.rb",
     "test/messages/open_test.rb",
     "test/messages/route_refresh_test.rb",
     "test/messages/update_test.rb",
     "test/neighbor_test.rb",
     "test/nlris",
     "test/nlris/inet_test.rb",
     "test/nlris/labeled_test.rb",
     "test/nlris/nlri_test.rb",
     "test/nlris/rd_test.rb",
     "test/optional_parameters",
     "test/optional_parameters/as4_test.rb",
     "test/optional_parameters/capability_test.rb",
     "test/optional_parameters/dynamic_test.rb",
     "test/optional_parameters/graceful_restart_test.rb",
     "test/optional_parameters/mbgp_test.rb",
     "test/optional_parameters/optional_parameter_test.rb",
     "test/optional_parameters/orf_test.rb",
     "test/optional_parameters/route_refresh_test.rb",
     "test/orfs",
     "test/orfs/prefix_orf_test.rb",
     "test/path_attributes",
     "test/path_attributes/aggregator_test.rb",
     "test/path_attributes/as_path_test.rb",
     "test/path_attributes/atomic_aggregate_test.rb",
     "test/path_attributes/attribute_test.rb",
     "test/path_attributes/cluster_list_test.rb",
     "test/path_attributes/communities_test.rb",
     "test/path_attributes/extended_communities_test.rb",
     "test/path_attributes/extended_community_test.rb",
     "test/path_attributes/local_pref_test.rb",
     "test/path_attributes/mp_reach_test.rb",
     "test/path_attributes/mp_unreach_test.rb",
     "test/path_attributes/multi_exit_disc_test.rb",
     "test/path_attributes/next_hop_test.rb",
     "test/path_attributes/origin_test.rb",
     "test/path_attributes/originator_id_test.rb",
     "test/path_attributes/path_attribute_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

