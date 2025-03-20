#!/bin/bash

# --- Configuration ---
REPO_PATH="/home/fahmi/github/randomlivefromyt"
COMMIT_MESSAGE="Scheduled commit: $(date)"
REMOTE_BRANCH="main"

# --- Script Logic ---

cd "$REPO_PATH" || {
  echo "Error: Could not navigate to repository directory: $REPO_PATH"
  exit 1
}

git add .

if ! git diff --cached --quiet; then

  git commit -m "$COMMIT_MESSAGE"

  git push origin "$REMOTE_BRANCH"

  echo "Scheduled commit and push successful: $COMMIT_MESSAGE"
else
  echo "No changes to commit."
fi

exit 0
