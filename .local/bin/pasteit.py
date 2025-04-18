#!/usr/bin/env python

import argparse
import subprocess

import requests


def fetch_clipboard_content():
    command = ["wl-paste"]
    process = subprocess.Popen(command, stdout=subprocess.PIPE)
    clipboard_content, _ = process.communicate()
    return clipboard_content.decode()


def post_clipboard_content(clipboard_content, lexer="python"):
    """
    Post the clipboard content to bpa.st and return the link
    """
    url = "https://bpa.st/api/v1/paste"
    data = {"expiry": "1day", "files": [{"content": clipboard_content, "lexer": lexer}]}
    response = requests.post(url, json=data)
    response.raise_for_status()
    response_json = response.json()
    return f"Link: {response_json['link']}\nRemoval: {response_json['removal']}"


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Paste the clipboard content to bpa.st and return the link."
    )
    parser.add_argument(
        "--lexer",
        default="python",
        choices=["python", "text"],
        help="Lexer to use for syntax highlighting",
    )
    args = parser.parse_args()

    clipboard_content = fetch_clipboard_content()
    link = post_clipboard_content(clipboard_content, args.lexer)
    print(link)
