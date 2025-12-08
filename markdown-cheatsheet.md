# Markdown Cheat Sheet
*Quick reference for formatting .md files*

---

## Headers
```markdown
# H1 - Main Title (largest)
## H2 - Section
### H3 - Subsection
#### H4 - Smaller heading
##### H5 - Even smaller
###### H6 - Smallest
```

---

## Text Formatting
```markdown
**Bold text**
*Italic text*
***Bold and italic***
~~Strikethrough~~
`Inline code`
```

**Examples:**
- **This is bold**
- *This is italic*
- ***This is both***
- ~~This is crossed out~~
- `This is code`

---

## Lists

### Unordered (Bullets)
```markdown
- Item 1
- Item 2
  - Nested item 2a
  - Nested item 2b
- Item 3

* Also works with asterisks
+ Or plus signs
```

### Ordered (Numbers)
```markdown
1. First item
2. Second item
3. Third item
   1. Nested item 3a
   2. Nested item 3b
```

---

## Links
```markdown
[Link text](https://example.com)
[Mode Analytics](https://mode.com/sql-tutorial/)
[GitHub Profile](https://github.com/mshorestech)
```

**Example:** [Google](https://google.com)

---

## Code Blocks

### Inline Code
```markdown
Use `SELECT * FROM table` for queries.
```

### Code Blocks (Fenced)
Use three backticks before and after code

### Code Blocks with Language (syntax highlighting)
Add language name after opening backticks:
- sql
- python
- javascript
- bash

---

## Quotes
```markdown
> This is a blockquote
> It can span multiple lines
>
> And have multiple paragraphs
```

**Example:**
> "The only way to learn SQL is to write SQL queries."
> - Every SQL instructor ever

---

## Horizontal Rules
```markdown
---
(three dashes)

***
(three asterisks)

___
(three underscores)
```

All create:
---

---

## Tables
```markdown
| Header 1 | Header 2 | Header 3 |
|----------|----------|----------|
| Row 1    | Data     | More     |
| Row 2    | Data     | More     |

| Left align | Center align | Right align |
|:-----------|:------------:|------------:|
| Left       | Center       | Right       |
```

**Example:**

| Name | Department | Salary |
|------|------------|--------|
| John | IT         | 75000  |
| Jane | HR         | 65000  |

---

## Task Lists (GitHub)
```markdown
- [x] Completed task
- [ ] Incomplete task
- [ ] Another task
```

**Example:**
- [x] Learn SELECT
- [x] Learn WHERE
- [ ] Learn JOINs
- [ ] Learn Window Functions

---

## Images
```markdown
![Alt text](image-url.png)
![SQL Diagram](./images/diagram.png)
```

---

## Emoji (GitHub supported)

**Common ones:**
- :rocket: = rocket
- :fire: = fire
- :tada: = party
- :100: = 100
- :white_check_mark: = checkmark
- :warning: = warning
- :x: = X
- :bulb: = lightbulb
- :star: = star
- :books: = books
- :dart: = target
- :muscle: = muscle

---

## Collapsible Sections (GitHub)
```markdown
<details>
<summary>Click to expand</summary>

Hidden content goes here.

Can include:
- Lists
- Code blocks
- Whatever you want!

</details>
```

---

## Escaping Markdown
```markdown
Use backslash to escape special characters:
\*Not italic\*
\# Not a header
\[Not a link](url)
```

---

## Comments (Won't Display)
```markdown
[//]: # (This is a comment)

<!-- This is also a comment -->
<!-- HTML-style comments work too -->
```

---

## Keyboard Keys
```markdown
Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy
Press <kbd>Enter</kbd> to submit
```

**Example:** Press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>V</kbd> for VS Code preview

---

## Line Breaks
```markdown
Line 1  
Line 2  
(Two spaces at end of line = line break)

Or use <br> tag:
Line 1<br>
Line 2
```

---

## Quick Tips

### DO's
- Use headers for structure
- Use code blocks for all code/commands
- Use bullets for lists
- Use **bold** for emphasis
- Keep it simple and readable

### DON'Ts
- Don't skip header levels (H1 to H3)
- Don't overuse bold/italic
- Don't create huge walls of text
- Don't forget blank lines between sections

---

## Common Use Cases

### Documentation
```markdown
# Project Name
Brief description

## Installation
Steps here

## Usage
Examples here

## Contributing
Guidelines here
```

### Notes
```markdown
# Day 1 Notes

## What I Learned
- Concept 1
- Concept 2

## Questions
- Question 1
- Question 2

## Tomorrow's Goals
- [ ] Goal 1
- [ ] Goal 2
```

### Cheat Sheet (like this!)
```markdown
# Topic Cheat Sheet

## Section 1
Content

## Section 2
Content

---
*Created: Date*
```

---

## Preview in VS Code

**Keyboard Shortcuts:**
- Ctrl + Shift + V - Open preview
- Ctrl + K V - Open preview to side

**Or:**
- Right-click .md file and select "Open Preview"

---

## Resources

- GitHub Markdown Guide: https://guides.github.com/features/mastering-markdown/
- Markdown Guide: https://www.markdownguide.org/
- CommonMark Spec: https://commonmark.org/

---

**Created:** December 9, 2025  
**Author:** Matthew Shores  
**Purpose:** Quick reference for all .md files in sql-learning repo
