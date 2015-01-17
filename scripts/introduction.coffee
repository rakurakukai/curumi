# Description:
# Self-Introduction constantly.
#
# Commands:
# No commands.
#
# Notes:
# depends on node-cron
 
cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 3 * * 6', () ->
    envelope = room: "#general"
    robot.send {room: '#general'}, """
    私の名前はくるみ。クルムの番人をしているの。
    
    今日は土曜開放日かもしれないし、そうじゃないかもしれない。私にはわからない。ちゃんとメールを見るのよ。

    何かを開発したい時はGitHubがオススメ。
    https://github.com/rakurakukai
    私の開発もたまにはお願いね。

    らくらく会のWebサイトはこっちよ。
    http://rakurakukai.github.io/

    パソコンばっかりしてないで、たまには外で遊んできなさい。
    """
  ).start()
