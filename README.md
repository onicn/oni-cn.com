Onicn
=====

> 此项目为缺氧（Oxygen Not Included) 的非官方中文百科，暂且只提供中文文档

# 安装

## 安装 Elixir 运行环境
请参照 [官方文档](https://elixir-lang.org/install.html) 安装 elixir 运行环境
Windows 用户推荐使用 [wsl 2](https://docs.microsoft.com/zh-cn/windows/wsl/install) 做为开发环境

当在终端中运行 `iex` 命令出现如下界面，表示 Elixir 运行环境安装成功

```bash
Erlang/OTP 24 [erts-12.1.5] [source] [64-bit] [smp:10:10] [ds:10:10:10]

Interactive Elixir (1.13.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)>
```

## 安装依赖

运行如下命令安装依赖环境，第一次运行时，根据提示手动输入 `y` 安装包管理器。

```bash
mix deps.get
```

## 编译

运行如下命令编译项目，所需时间和电脑配置有关。第一次编译的时候会同时编译依赖，所需时间较长，请耐心等待。

```bash
mix compile
```

## 生成网站

网站的所有文件都是静态文件，没有动态内容，所有的页面都是提前生成好的，运行如下命令生成网站。

```bash
mix onicn.generate
```

## 本地预览

`img` 和 `content_images` 两个图片目录放在 `priv` 下面，生成的网站页面都会放在 `priv/dist` 下面，可以按此规则配置 HTTP 文件服务器本地预览。
本项目同样内置了预览服务，运行如下命令后，在浏览器中打开 [http://127.0.0.1:4000](http://127.0.0.1:4000) 即可（暂不支持修改端口）。


```bash
mix onicn.generate
```
