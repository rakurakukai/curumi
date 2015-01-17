# Description:
# Self-Introduction constantly.
#
# Commands:
# No commands.
#
# Notes:
# depends on node-cron
 
cronJob = require('cron').CronJob

str = """
私の名前はくるみ。クルムの番人をしているの。

今日は土曜開放日かもしれないし、そうじゃないかもしれない。私にはわからない。ちゃんとメールを見るのよ。

何かを開発したい時はGitHubがオススメ。
https://github.com/rakurakukai
私の開発もたまにはお願いね。

らくらく会のWebサイトはこっちよ。
http://rakurakukai.github.io/

パソコンばっかりしてないで、たまには外で遊んできなさい。
"""

module.exports = (robot) ->
  robot.hear /start cron/i, (msg) ->
    new cronJob('0 0 10 * * 6', () ->
      msg.send str
    , null, true, "Asia/Tokyo") 
