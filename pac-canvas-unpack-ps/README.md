# pac-canvas-unpack-ps

Power Apps キャンバスアプリ（`.msapp`）を **Power Platform CLI（pac）でソース形式に展開（unpack）**するための、シンプルな PowerShell スクリプトです。  
Git で差分管理・レビューしやすい形にする用途を想定しています。

---

## できること

- `pac` コマンドの存在チェック（見つからなければ即エラー）
- スクリプトと同じフォルダにある **最初の `.msapp`** を検索（無ければ即エラー）
- `sample_app_src` フォルダに `pac canvas unpack` で展開

---

## 前提条件

- Windows PowerShell 5.1 もしくは PowerShell 7+
- Power Platform CLI（`pac`）がインストール済み & PATH が通っていること
- 展開したい `.msapp` ファイルが手元にあること

> 💡 `pac` が使えるかは、ターミナルで `pac` を実行して確認できます。

---

## 使い方（Quick Start）

1. このリポジトリをクローン（または ZIP ダウンロード）
2. スクリプト（`.ps1`）と同じフォルダに `*.msapp` を置く
3. PowerShell でスクリプトを実行

例：

```powershell
# リポジトリのフォルダへ移動
cd path\to\pac-canvas-unpack-ps

# 実行
.\unpack.ps1
