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

1. 克隆或下载本仓库
2. 编辑 `main.tex` 文件，填写个人信息和报告内容
3. 使用 XeLaTeX 按上述顺序编译

**推荐使用 [TeXPage](https://www.texpage.com/) 快速开始！**

## 文件说明

- `main.tex` - 主文档，包含报告全部内容
- `NEUBachelorProposal.cls` - 模板类文件
- `references.bib` - 参考文献数据库
- `gb7714-2025.bbx/cbx` - 国标参考文献样式文件
- `huiyijiyao.doc/pdf` - 会议纪要模板

## 使用说明

模板提供以下主要命令：

- `\mokuai{左侧标题}{正文内容}` - 创建内容模块
- `\tu{宽度}{路径}` - 插入图片
- `\biao{列数}{内容}` - 插入表格
- `\jindu{...}` - 填写工作进度安排

详细使用方法请参考 `main.tex` 中的示例代码和注释。

## License

本项目采用 [LaTeX Project Public License v1.3c](LICENSE) 许可证。
