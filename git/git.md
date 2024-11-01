## git常见使用场景

### 自己使用

```shell
git add .
git commit -m "descriptions"
git push
```

### 协作使用 

1. 同一分支下的使用

```shell
git stash -u # 暂存本地的修改
git pull
git stash apply
git add .
git commit -m "descriptions"
git push
```

2. 不同分支的使用

## git stash

要在命令行中将 Git 修改的内容保存到暂存区（stash），您可以使用以下命令：

```bash
git stash
```

这个命令会：

- **保存当前工作目录中已跟踪文件的修改**（未提交的更改）。
- **清理工作目录**，使其与上次提交的状态一致。

**如果您还有未跟踪的文件（即新添加但未 `git add` 的文件）想要一并保存，可以使用：**

```bash
git stash -u
```

或者更全面地保存包括忽略文件在内的所有内容：

```bash
git stash -a
```

**查看保存的暂存内容列表：**

```bash
git stash list
```

这将显示所有的 stash，包括它们的索引（例如 `stash@{0}`）和提交信息。

**恢复暂存的修改：**

- **应用最近的 stash：**

  ```bash
  git stash apply
  ```

- **应用特定的 stash：**

  ```bash
  git stash apply stash@{n}
  ```

  将 `n` 替换为对应的索引数字。

**应用并删除 stash：**

```bash
git stash pop
```

这相当于执行 `git stash apply` 后再执行 `git stash drop`，即应用修改并从 stash 列表中删除。

**删除特定的 stash：**

```bash
git stash drop stash@{n}
```

**清空所有 stash：**

```bash
git stash clear
```

**示例：**

1. **保存修改并包括未跟踪的文件：**

   ```bash
   git stash -u
   ```

2. **查看 stash 列表：**

   ```bash
   git stash list
   # 输出示例：
   # stash@{0}: WIP on branch-name: commit-hash Commit message
   ```

3. **恢复并删除最近的 stash：**

   ```bash
   git stash pop
   ```

---

**注意事项：**

- 确保在保存 stash 前，了解哪些文件会被保存，哪些不会。默认情况下，未跟踪的文件不会被保存，除非使用 `-u` 或 `-a` 选项。
- 在协作环境中，小心使用 stash，因为它是个人的本地操作，对其他协作者不可见。
