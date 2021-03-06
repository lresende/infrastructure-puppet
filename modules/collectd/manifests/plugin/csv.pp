# https://collectd.org/wiki/index.php/Plugin:CSV
class collectd::plugin::csv (
  $ensure     = present,
  $datadir    = '/etc/collectd/var/lib/collectd/csv',
  $storerates = false
) {

  collectd::plugin {'csv':
    ensure  => $ensure,
    content => template('collectd/plugin/csv.conf.erb'),
  }
}
