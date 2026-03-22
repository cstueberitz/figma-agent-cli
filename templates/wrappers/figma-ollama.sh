#!/bin/bash
set -euo pipefail

REPO=""
CWD=""
INSTRUCTIONS=""
MODEL="${FIGMA_OLLAMA_MODEL:-qwen2.5-coder:latest}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --repo)
      REPO="$2"
      shift 2
      ;;
    --cwd)
      CWD="$2"
      shift 2
      ;;
    --instructions)
      INSTRUCTIONS="$2"
      shift 2
      ;;
    *)
      break
      ;;
  esac
done

if ! command -v ollama >/dev/null 2>&1; then
  echo "ollama is not installed or not in PATH."
  echo "Install Ollama and try again."
  exit 1
fi

PROMPT="${*:-Open the repo instructions and connect to Figma.}"

exec ollama run "$MODEL" "You are using figma-agent-cli as a Figma backend. Repo: $REPO. Working directory: $CWD. Follow these instructions first: $INSTRUCTIONS. User request: $PROMPT"
