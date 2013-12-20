# Opus

Opus is a tool for printing off source code. I know, that's a weird concept. But sometimes if I am porting a library to a different language it helps me to have a physical copy. That's where opus comes in.

Since code is typically taller (1000s of lines) than it is wide (~80 chars), Opus columnizes the code so it fits on a page better. There are two reasons for this:

1. It's not cool to print out a shit ton of paper.

2. Spacial locality can be more important than readability.

When I think of source code, I relate different parts based on where it's physically located in a source file. If I can get more lines on a page then I can relate source lines within a page instead of across pages.


## Usage

Installing Opus is pretty easy once you have Ruby 1.9+ installed:

```sh
$ gem install opus
```

Then you can run Opus across your source files:

```sh
$ opus -o out.pdf src/*.c
```


## Options

The options for Opus are fairly limited but feel free to send pull requests with new features:

```
-c NUM, --columns NUM 
    The number of columns per page.
        
-o FILE, --output FILE 
    The name of the output file.
```
