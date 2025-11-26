# 东北大学本科毕业设计开题报告 LaTeX 模板

![License](https://img.shields.io/github/license/SchrodingerBlume/NEUBachelorProposal-LaTeX)
![GitHub release](https://img.shields.io/github/v/release/SchrodingerBlume/NEUBachelorProposal-LaTeX)
![GitHub stars](https://img.shields.io/github/stars/SchrodingerBlume/NEUBachelorProposal-LaTeX?style=social)

东北大学（NEU）本科毕业设计（论文）开题报告的 LaTeX 模板，遵循学校规范格式要求。

## 编译环境

- **编译器**：XeLaTeX
- **文献工具**：Biber
- **编译顺序**：XeLaTeX → Biber → XeLaTeX → XeLaTeX

## 快速开始

### 方式一：使用 dtx 源文件（推荐用于发布）

本项目采用标准的 `.dtx` 格式发布，这是 LaTeX 宏包的标准分发方式：

1. 克隆或下载本仓库
2. 运行 `xelatex NEUBachelorProposal.ins` 生成 `NEUBachelorProposal.cls` 文件
3. 编辑 `main.tex` 文件，填写个人信息和报告内容
4. 使用 XeLaTeX 按上述顺序编译 `main.tex`

如需查看文档类的完整文档说明，可以运行：
```bash
xelatex NEUBachelorProposal.dtx
```

### 方式二：直接使用（适合快速开始）

1. 克隆或下载本仓库（已包含生成好的 `NEUBachelorProposal.cls`）
2. 编辑 `main.tex` 文件，填写个人信息和报告内容
3. 使用 XeLaTeX 按上述顺序编译

**推荐使用 [TeXPage](https://www.texpage.com/zh/template/9b9b8732-d494-4980-b176-64895e2c745d) 快速开始！**

## 文件说明

### 源文件
- `NEUBachelorProposal.dtx` - 文档化源文件（包含代码和文档）
- `NEUBachelorProposal.ins` - 安装脚本

### 生成文件
- `NEUBachelorProposal.cls` - 模板类文件（由 `.ins` 从 `.dtx` 生成）

### 示例和辅助文件
- `main.tex` - 主文档，包含报告全部内容和使用示例
- `references.bib` - 参考文献数据库
- `gb7714-2025.bbx/cbx` - 国标参考文献样式文件
- `huiyijiyao.doc/pdf` - 会议纪要模板
- `figures/` - 示例图片文件夹

## 使用说明

模板提供以下主要命令：

- `\mokuai{左侧标题}{正文内容}` - 创建内容模块
- `\tu{宽度}{路径}` - 插入图片
- `\biao{列数}{内容}` - 插入表格
- `\jindu{...}` - 填写工作进度安排

详细使用方法请参考 `main.tex` 中的示例代码和注释。

## 在 VSCode 中编译

本项目已配置好 VSCode LaTeX Workshop 扩展的编译环境。

### 前置要求

1. 安装 [Visual Studio Code](https://code.visualstudio.com/)
2. 安装 VSCode 扩展：[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
3. 确保系统已安装 TeX Live、MiKTeX 或 MacTeX（包含 XeLaTeX 和 Biber）

### 编译步骤

1. 用 VSCode 打开项目文件夹
2. 打开 `main.tex` 文件
3. 使用以下任一方式编译：

   **方法一：自动编译**
   - 保存文件时会自动编译（已配置 `onSave` 自动编译）

   **方法二：手动编译**
   - 按 `Ctrl+Alt+B`（Windows/Linux）或 `Cmd+Option+B`（macOS）
   - 或点击左侧栏的 TeX 图标，选择 "Build LaTeX project"

   **方法三：使用配方**
   - 按 `Ctrl+Alt+V`（Windows/Linux）或 `Cmd+Option+V`（macOS）查看 PDF
   - 点击编辑器右上角的绿色播放按钮

### 可用的编译配方

项目提供了三种编译配方（`.vscode/settings.json` 中配置）：

1. **XeLaTeX ➞ Biber ➞ XeLaTeX × 2**（默认，完整编译）
   - 适用于有参考文献的完整编译
   - 编译顺序：XeLaTeX → Biber → XeLaTeX → XeLaTeX

2. **XeLaTeX**（快速编译）
   - 仅运行一次 XeLaTeX
   - 适用于快速预览

3. **XeLaTeX × 2**（无文献编译）
   - 运行两次 XeLaTeX
   - 适用于更新交叉引用但不处理文献

### 查看 PDF

编译完成后，PDF 会自动在 VSCode 标签页中打开。你也可以：
- 右键点击 PDF 查看器选择外部查看器
- 使用 `Ctrl+Alt+V`（Windows/Linux）或 `Cmd+Option+V`（macOS）在新标签页中查看

### 清理辅助文件

编译会产生大量辅助文件（`.aux`、`.log`、`.bbl` 等）。清理方式：
- 按 `Ctrl+Alt+C`（Windows/Linux）或 `Cmd+Option+C`（macOS）
- 或在 TeX 侧边栏选择 "Clean up auxiliary files"

辅助文件已添加到 `.gitignore`，不会被提交到 Git 仓库。

## License

本项目采用 [LaTeX Project Public License v1.3c](LICENSE) 许可证。
