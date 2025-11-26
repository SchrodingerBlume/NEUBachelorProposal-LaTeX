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

## License

本项目采用 [LaTeX Project Public License v1.3c](LICENSE) 许可证。
