raise unless node[:platform_family] == "windows"

node.default[:windows][:allow_pending_reboots] = false

if node[:target_platform] !~ /^hyperv/
  node.set[:windows_features_installed] ||= []
  feature_names = []

  node[:features_list][:windows].each do |feature_name, feature_attrs|
    next if node[:windows_features_installed].include? feature_name

    windows_feature feature_name do
      action :install
      all feature_attrs["all"] || true
      restart feature_attrs["restart"] || false
    end

    feature_names.push(feature_name)
  end

  ruby_block "set_windows_features_install_flag" do
    block do
      unless feature_names.empty?
        installed_features = node[:windows_features_installed] + feature_names
        node.set[:windows_features_installed] = installed_features
        node.save
      end
    end
  end
end

