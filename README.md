# 🎬 狼途世界 Landing Page

狼途世界（LangtuWorld）精彩视频社区引流落地页。

## 📖 项目介绍

这是一个为 [狼途世界](http://www.langtushijie.com) 设计的现代化 Landing Page，用于吸引新用户访问视频社区。

### 特色功能

- ✨ **现代化设计** - 暗色主题，专业视觉效果
- 📱 **响应式布局** - 完美适配手机、平板、桌面
- 🎯 **精准引流** - 精选热门视频展示
- 💬 **社交证明** - 真实用户评论展示
- 🚀 **快速加载** - 纯静态 HTML，无需后端

## 📁 文件结构

```
Landing_langtu/
├── landing-page.html    # 主页面
└── README.md           # 项目说明
```

## 🚀 使用方法

### 本地预览

```bash
# 使用 Python 简单服务器
python3 -m http.server 8080

# 访问 http://localhost:8080/landing-page.html
```

### 在线访问

访问 GitHub Pages（如果启用）或直接打开 HTML 文件。

## 🎨 设计亮点

### 技术栈
- **纯 HTML/CSS/JS** - 无依赖，轻量级
- **OKLCH 色彩空间** - 现代色彩定义
- **CSS Grid + Flexbox** - 响应式布局
- **CSS 变量** - 易于定制主题

### 设计规范
- **移动优先** - 从小屏到大屏渐进增强
- **8px 间距系统** - 统一视觉节奏
- **微交互动画** - 0.2s cubic-bezier 缓动
- **无障碍设计** - 语义化 HTML，高对比度

## 📊 页面结构

1. **Hero Section** - 品牌标语 + CTA + 统计数据
2. **热门视频** - 精选 2 个高播放量视频
3. **社区特色** - 4 个核心优势展示
4. **用户评论** - 3 条真实用户反馈
5. **底部 CTA** - 最终转化引导

## 🔗 链接

- **狼途世界官网**: http://www.langtushijie.com
- **GitHub 仓库**: https://github.com/popcall-git/Landing_langtu

## 📝 定制说明

### 修改颜色

编辑 `landing-page.html` 中的 CSS 变量：

```css
:root {
    --primary: oklch(0.65 0.25 280);      /* 主色调 */
    --primary-dark: oklch(0.55 0.25 280); /* 悬停色 */
    --accent: oklch(0.7 0.2 340);         /* 强调色 */
}
```

### 修改视频

找到 `.video-grid` 部分，修改视频链接和信息：

```html
<a href="你的视频链接" class="video-card">
    <h3 class="video-title">视频标题</h3>
</a>
```

### 修改统计数据

找到 `.stats` 部分，修改数字和标签。

## 📄 许可证

MIT License

---

**Created for 狼途世界 | LangtuWorld** 🎬
