#!/bin/bash

echo "=================================="
echo "🚀 Cloudflare Tunnel を起動中..."
echo "=================================="
echo ""

# Docker Composeでサービスを起動
docker-compose up -d

echo ""
echo "⏳ トンネルURLを取得中..."
sleep 5

# CloudflaredのログからURLを抽出
URL=$(docker-compose logs cloudflared | grep -o 'https://[a-zA-Z0-9_-]*\.trycloudflare\.com' | head -1)

echo ""
echo "=================================="
echo "✅ セットアップ完了！"
echo "=================================="
echo ""
echo "🎉 おめでとうございます！"
echo ""
echo "📍 以下のURLでアクセスしてみて！！"
echo ""
echo "   👉 $URL"
echo ""
echo "=================================="
echo ""
echo "💡 ヒント:"
echo "  - スマホからもアクセスできます"
echo "  - URLは起動するたびに変わります"
echo "  - ログを見る: docker-compose logs -f"
echo "  - 停止する: docker-compose down"
echo ""
