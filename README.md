pls-md
======

Extract text from ugly PLS slides and condense the content to a nice markdown document.

Usage
-----

1. Download the pdfs from d2l and place them in the same folder as pls-md.rb.
2. Run pls-md

   ```
  ruby pls-md.rb > pls.md
   ```
  
3. ????
4. PROFIT!!!

###I've got the markdown file, now what do I do with it?

That part is up to you. I use [CommonMark](https://github.com/jgm/CommonMark) to convert the markdown to HTML although you could use any web tool to do that as well. Once you have it in html, you can open that in M$ word, save it as .docx, and format it to your liking. 

###What formating is to your liking?

For a note sheet I use the "Modern" style set, 8pt. calibri font, 0.8 line spacing, and a custom multilevel list that only distinguishes level by the symbol, not spacing. The whole point of the markdown step is that this part should be easy; select some text like you want to change formating, right-click > Styles > select text with similar formatting.

###Why are the chapters out of order?

I just use a glob to get the files, they will show up in the document in the order of their filenames. Change the name `Ch1.pdf` to `Ch01.pdf` etc. Sorry.
