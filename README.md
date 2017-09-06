# pls-md

Extract text from ugly PLS slides and condense the content to a nice markdown document.

## Usage

1. Get ruby

    ```shell
    apt-get install ruby
    ```

2. Get [pdf-reader](https://github.com/yob/pdf-reader)

    ```shell
    gem install pdf-reader
    ```

3. Get pls-md

    ```shell
    git clone https://github.com/kmb32123/pls-md.git
    ```

3. Download the PDFs from d2l and place them in the same folder as pls-md.rb.
4. Run pls-md

    ```shell
    ruby pls-md.rb > pls.md
    ```

5. ????
6. PROFIT!!!

### I've got the markdown file, now what do I do with it?

That part is up to you. I use [CommonMark](https://github.com/jgm/CommonMark) to convert the markdown to HTML although you could use any web tool to do that as well. Once you have it in html, you can open that in M$ word, save it as .docx, and format it to your liking. The whole point of the markdown step is that this part should be easy in word; select some text like you want to change formating, right-click > Styles > select text with similar formatting.

### What formatting is to your liking?

For a note sheet I use the "Modern" style set, 7pt. Calibri font, 0.8 line spacing, and a custom multilevel list that only distinguishes level by the symbol, not spacing. This brings all of the text (including ch2) to around 13 pages.

### Why are the chapters out of order?

I just use a glob to get the files, they will show up in the document in the order of their filenames. Change the name `Ch1.pdf` to `Ch01.pdf` etc. Sorry.

### Why no pictures?

They can't be extracted from the PDFs. Sorry.

### Why does pls-md crash?

Not sure. I'm running Ruby 2.0 on Debian. This might work on windoze; if not, [Cygwin](https://www.cygwin.com/) is your friend.
