# Makefile for NEU Thesis Proposal Template
# 东北大学开题报告LaTeX模板Makefile

# 主文件名（不含扩展名）
MAIN = NEU_Proposal_Template

# LaTeX编译器
LATEX = xelatex

# 编译选项
LATEXFLAGS = -interaction=nonstopmode

# 生成的PDF文件
PDF = $(MAIN).pdf

# 辅助文件
AUX_FILES = $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc

# 所有源文件
TEX_FILES = $(MAIN).tex
CLS_FILES = NEUProposal.cls

# 默认目标
all: $(PDF)

# 编译PDF（需要编译两次）
$(PDF): $(TEX_FILES) $(CLS_FILES)
	@echo "========== 第一次编译 =========="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@echo "========== 第二次编译 =========="
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex
	@echo "========== 编译完成 =========="

# 快速编译（只编译一次）
quick:
	$(LATEX) $(LATEXFLAGS) $(MAIN).tex

# 清理辅助文件
clean:
	@echo "清理辅助文件..."
	@rm -f $(AUX_FILES)
	@rm -f *.synctex.gz
	@rm -f *.nav *.snm *.vrb
	@echo "清理完成"

# 清理所有生成的文件（包括PDF）
cleanall: clean
	@echo "清理PDF文件..."
	@rm -f $(PDF)
	@echo "所有文件清理完成"

# 查看PDF（Linux）
view: $(PDF)
	@if command -v xdg-open >/dev/null 2>&1; then \
		xdg-open $(PDF); \
	elif command -v evince >/dev/null 2>&1; then \
		evince $(PDF); \
	else \
		echo "请手动打开 $(PDF)"; \
	fi

# 查看PDF（Mac）
viewmac: $(PDF)
	open $(PDF)

# 帮助信息
help:
	@echo "东北大学开题报告LaTeX模板 Makefile 使用说明"
	@echo "============================================"
	@echo "make          - 编译PDF文档（编译两次）"
	@echo "make quick    - 快速编译（只编译一次）"
	@echo "make clean    - 清理辅助文件"
	@echo "make cleanall - 清理所有文件（包括PDF）"
	@echo "make view     - 编译并查看PDF（Linux）"
	@echo "make viewmac  - 编译并查看PDF（Mac）"
	@echo "make help     - 显示此帮助信息"

# 声明伪目标
.PHONY: all quick clean cleanall view viewmac help
