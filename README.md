# Assetto Corsa traffic Server build by Docker

Assetto Corsaの一般車(AI,Traffic)機能の付いたサーバーのDockerファイルです。

# 使い方
- このリポジトリをクローン
- ContentsManagerのサーバタブまたはacServerManager.exeでサーバー用コンフィグを作成
- entry_list,iniの[car_*]項目すべてに
```
AI=auto
```
を記述
![image](https://user-images.githubusercontent.com/72444129/179905727-e1c6279a-4657-4b76-845d-2d9a84dd0242.png)

- assettoフォルダ内のcfgにコピー
- 使用したいTracks及びCarsをContentフォルダ内にコピー
- Tracks/CSP/使用したいマップ名内に
```
ai
```
というフォルダを作成し、その中に「fast_lane.ai」というファイルをコピー
![image](https://user-images.githubusercontent.com/72444129/179906099-9191ed0f-ac3f-42a0-a596-3a42b12b9036.png)

- 以下のコマンドでDockerを起動
```
docker-compose up -d --build
```
- 以下のコマンドで起動を確認
```
docker-compose logs -f
```
# 首都高mod
動作確認済み。

# Special Thanks
https://github.com/compujuckel/AssettoServer
https://github.com/compujuckel
