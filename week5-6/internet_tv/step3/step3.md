## STEP3  データを抽出するクエリを作成

１．よく見られているエピソードを知りたい。

⇒　エピソード視聴数トップ３のエピソードタイトルと視聴数を取得する。
```sql
SELECT
  ep.title, li.views
FROM
  episodes AS ep INNER JOIN lists AS li
    ON ep.episode_id = li.episode_id
ORDER BY
  li.views DESC
LIMIT 3
;
```
２．よく見られているエピソードの番組情報やシーズン情報も合わせて知りたい。

⇒　エピソード視聴数トップ３の　

・番組タイトル　・エピソードタイトル　・シーズン数　・視聴数　・エピソード数　の５項目を取得する。

```sql
SELECT
  pg.title, ep.title, ps.season_num, li.views, ep.episode_num
FROM
  episodes AS ep
    INNER JOIN lists AS li
      ON ep.episode_id = li.episode_id
    INNER JOIN program_seasons AS ps
      ON ep.program_season_id = ps.program_season_id
    INNER JOIN programs AS pg
      ON ps.program_id = pg.program_id
ORDER BY
  li.views DESC
LIMIT 3
;
```

３．本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのか知りたい。

⇒本日放送される全ての番組に対して、

・チャンネル名　・放送開始時刻（日付+時間）　・放送終了時刻　・シーズン数　・エピソード数　・エピソードタイトル　・エピソード詳細　の７項目を取得する。

※番組の開始時刻が本日のものを本日放送される番組とみなす。

```sql
SELECT
  ch.channel_name, li.start_time, li.end_time, ps.season_num, ep.episode_num, ep.title, ep.description
FROM
  lists AS li
    INNER JOIN channels AS ch
      ON li.channel_id = ch.channel_id
    INNER JOIN episodes AS ep
      ON li.episode_id = ep.episode_id
    INNER JOIN program_seasons AS ps
      ON ep.program_season_id = ps.program_season_id
ORDER BY
  ch.channel_id
;
```

４．ドラマというチャンネルがあったとして、ドラマのチャンネルの番組表を表示するために、本日から一週間分、何日の何時から何の番組が放送されるか知りたい。

⇒　ドラマのチャンネルに対して、

・放送開始時刻　・放送終了時刻　・シーズン数　・エピソード数　・エピソードタイトル　・エピソード詳細　　を本日から１週間分取得する。

```sql
# 「channel_C」をドラマチャンネルとすると
SELECT
  li.start_time, li.end_time, ps.season_num, ep.episode_num, ep.title, ep.description
FROM
  lists AS li
    INNER JOIN channels AS ch
      ON li.channel_id = ch.channel_id
    INNER JOIN episodes AS ep
      ON li.episode_id = ep.episode_id
    INNER JOIN program_seasons AS ps
      ON ep.program_season_id = ps.program_season_id
WHERE
  ch.channel_name = 'channel_C'
   AND
  li.start_time
      BETWEEN '2023-04-01 00:00:00' AND '2023-04-07 23:59:59'
;
```
