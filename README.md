# opentf-proxmox
<div id="top"></div>
<p style="display: inline">
<!-- List of technologies used --> 
<img src="https://img.shields.io/badge/Proxmox--FFA500.svg?logo=Proxmox&style=plastic"> <img src="https://img.shields.io/badge/HCL--007FFF.svg?logo=HCL&style=plastic"> <img src="https://img.shields.io/badge/opentofu--FFFF00.svg?logo=opentofu&style=plastic">

## Table of Contents

1. [About project](#Aboutproject)
2. [Enviorment](#Enviorment)
3. [Directory structure](#Directorystructure)
4. [Development environment setup](#Developmentenvironmentsetup)
5. [List of all the Opentofu variables](#ListofalltheOpentofuvariables)
6. [Troubleshooting](#Troubleshooting)

### [List of all the Opentofu variables](#ListofalltheOpentofuvariables)

| Variable name          | role                                      | Default variables                  | Variable in real enviorment              |
| ---------------------- | ----------------------------------------- | ---------------------------------- | ---------------------------------------- |
| MYSQL_ROOT_PASSWORD    | MySQL のルートパスワード（Docker で使用） | root                               |                                          |
| MYSQL_DATABASE         | MySQL のデータベース名（Docker で使用）   | django-db                          |                                          |
| MYSQL_USER             | MySQL のユーザ名（Docker で使用）         | django                             |                                          |
| MYSQL_PASSWORD         | MySQL のパスワード（Docker で使用）       | django                             |                                          |
| MYSQL_HOST             | MySQL のホスト名（Docker で使用）         | db                                 |                                          |
| MYSQL_PORT             | MySQL のポート番号（Docker で使用）       | 3306                               |                                          |
| SECRET_KEY             | Django のシークレットキー                 | secretkey                          | 他者に推測されないランダムな値にすること |
| ALLOWED_HOSTS          | リクエストを許可するホスト名              | localhost 127.0.0.1 [::1] back web | フロントのホスト名                       |
| DEBUG                  | デバッグモードの切り替え                  | True                               | False                                    |
| TRUSTED_ORIGINS        | CORS で許可するオリジン                   | http://localhost                   |                                          |
| DJANGO_SETTINGS_MODULE | Django アプリケーションの設定モジュール   | project.settings.local             | project.settings.dev                     |

