# Sieve Syntax Highlighting for VS Code

A [Visual Studio extension](https://learn.microsoft.com/en-us/visualstudio/ide/finding-and-using-visual-studio-extensions?view=vs-2022) that provides syntax highlighting for the Sieve email filtering language as specified by [RFC 5228](https://tools.ietf.org/html/rfc5228).

After installing the VS Code Extension, files that end in `.sieve` will have proper syntax highlighting: 

![Screenshot 2024-09-15 at 2 34 47 PM](https://github.com/user-attachments/assets/e8ca4970-19d2-4a8e-880a-60f4cfdd5ca2)

You should also see `Sieve` as Language option in the bottom right corner of the workspace.

![Screenshot 2024-09-15 at 2 29 52 PM](https://github.com/user-attachments/assets/5e6a0bcc-066c-4a53-9588-30c85cac1672)

# How to Contribute

Did you find a bug 🐛? Please submit an [issue](https://github.com/ssmereka/vscode-sieve/issues/new).

Would you like to make a code contribution? Follow these steps:

1. Clone the repository and open it in visual studio code. 
2. Open the [./syntaxes/sieve.tmLanguage.json] file to make adjustments to the syntax highlighting.
3. Press `F5` to open a new development workspace where changes can be view and tested in real time.
4. If necessary, update the example `.sieve` file(s) so that they render your syntax highlighting change.
5. Submit your change using a pull request. Reference any open issues this may fix.

If your changes are approved, they will be merged and released by the maintainer.
