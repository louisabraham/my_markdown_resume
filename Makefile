all: pdf

pdf: resume.pdf
resume.pdf: resume.md
	pandoc --standalone --template template.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o resume.tex resume.md; \
	context resume.tex

clean:
	-rm resume.tex
	-rm resume.tuc
	-rm resume.log
	-rm resume.pdf
