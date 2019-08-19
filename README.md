# sourcetree-custom-actions
A collection of SourceTree custom actions

## How To
- copy desired script to your pc
- go to SourceTree > Tools > Options > Custom Actions > Add and fill Custom Action as follow (egg for script to copy tags):
  - Menu caption: Copy Tag
  - Open in a separate window (false)
  - Show Full Output (false)
  - Run commnad silently (true)
  - Script to run: C:\Users\ **your username** \AppData\Local\Programs\Git\bin\bash.exe
  - Parameters: "C:\Users\ **your username** \Documents\sourcetree scripts\copy_tag.sh" $SHA
    - __IMPORTANT! parameters must go in quotation marks because sometimes folders have spaces and the script won't run if you don't place them__
    
