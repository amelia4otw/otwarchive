set :set_path_automatically, false
set :cron_log, "#{path}/log/whenever.log"

# reindex searchd
every 1.days, :at => '3:21 am' do
  command "/static/bin/ts_reindex.sh"
end
