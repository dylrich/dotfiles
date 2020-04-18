#!/usr/bin/env python3
import os
import sys
import subprocess


def inside_tree() -> bool:
    cmd = ["git", "rev-parse", "--is-inside-work-tree"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p.communicate()
    return p.returncode == 0


def inside_git() -> bool:
    cmd = ["git", "rev-parse", "--is-inside-git-dir"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout = p.communicate()[0]
    return stdout == b"true\n"


def uncomitted_changes() -> bool:
    cmd = ["git", "diff", "--quiet", "--ignore-submodules", "--cached"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p.communicate()
    return p.returncode != 0


def unstaged_files() -> bool:
    cmd = ["git", "diff-files", "--quiet", "--ignore-submodules", "--"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    p.communicate()
    return p.returncode != 0


def untracked_files() -> bool:
    cmd = ["git", "ls-files", "--others", "--exclude-standard"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout = p.communicate()[0]
    return stdout != b""


def branch_name() -> str:
    cmd = ["git", "symbolic-ref", "--quiet", "--short", "HEAD"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return str(p.communicate()[0], "utf-8").replace("\n", "")


def commit() -> str:
    cmd = ["git", "rev-parse", "--short", "HEAD"]
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return str(p.communicate()[0], "utf-8").replace("\n", "")


def get_memory() -> tuple:
    return map(int, os.popen("free -t -m").readlines()[-1].split()[1:])


def main():
    status = ""

    if not inside_tree():
        return

    if inside_git():
        return

    if uncomitted_changes():
        status += "+"

    if unstaged_files():
        status += "!"

    if untracked_files():
        status += "?"

    total, used, free = get_memory()

    if status != "":
        status = f"#[fg=colour12,nodim]{status}"

    buf = f"  #[fg=colour4]#H #[fg=colour14]{branch_name()} #[fg=colour10]@ #[fg=colour7,dim]{commit()} {status}"

    sys.stdout.write(buf)


if __name__ == "__main__":
    main()
